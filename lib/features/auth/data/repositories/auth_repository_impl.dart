import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/auth/domain/entities/user.dart';
import 'package:quran_app/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final fb.FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;
  User? _currentUser;

  AuthRepositoryImpl({
    fb.FirebaseAuth? auth,
    GoogleSignIn? googleSignIn,
  })  : _auth = auth ?? fb.FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn();

  @override
  Future<Either<Failure, User?>> getCurrentUser() async {
    return Right(_currentUser);
  }

  @override
  Future<Either<Failure, User>> signInWithEmail(
    String email,
    String password,
  ) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final firebaseUser = credential.user;
      if (firebaseUser == null) {
        return const Left(Failure.unexpected(message: 'Ошибка входа'));
      }
      final user = User(
        id: firebaseUser.uid,
        email: firebaseUser.email ?? email,
        displayName: firebaseUser.displayName,
        avatarUrl: firebaseUser.photoURL,
      );
      _currentUser = user;
      return Right(user);
    } on fb.FirebaseAuthException catch (e) {
      return Left(Failure.unauthorized(message: _mapAuthError(e)));
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, User>> signUpWithEmail(
    String email,
    String password,
  ) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final firebaseUser = credential.user;
      if (firebaseUser == null) {
        return const Left(Failure.unexpected(message: 'Ошибка регистрации'));
      }
      final user = User(
        id: firebaseUser.uid,
        email: firebaseUser.email ?? email,
        displayName: firebaseUser.displayName,
        avatarUrl: firebaseUser.photoURL,
      );
      _currentUser = user;
      return Right(user);
    } on fb.FirebaseAuthException catch (e) {
      return Left(Failure.validationError(message: _mapAuthError(e)));
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, User>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return const Left(Failure.unexpected(message: 'Вход отменён'));
      }
      final googleAuth = await googleUser.authentication;
      final credential = fb.GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final result = await _auth.signInWithCredential(credential);
      final firebaseUser = result.user;
      if (firebaseUser == null) {
        return const Left(Failure.unexpected(message: 'Ошибка входа'));
      }
      final user = User(
        id: firebaseUser.uid,
        email: firebaseUser.email ?? '',
        displayName: firebaseUser.displayName,
        avatarUrl: firebaseUser.photoURL,
      );
      _currentUser = user;
      return Right(user);
    } on fb.FirebaseAuthException catch (e) {
      return Left(Failure.unauthorized(message: _mapAuthError(e)));
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, User>> signInWithApple() async {
    try {
      final appleProvider = fb.AppleAuthProvider();
      final result = await _auth.signInWithProvider(appleProvider);
      final firebaseUser = result.user;
      if (firebaseUser == null) {
        return const Left(Failure.unexpected(message: 'Ошибка входа'));
      }
      final user = User(
        id: firebaseUser.uid,
        email: firebaseUser.email ?? '',
        displayName: firebaseUser.displayName,
        avatarUrl: firebaseUser.photoURL,
      );
      _currentUser = user;
      return Right(user);
    } on fb.FirebaseAuthException catch (e) {
      return Left(Failure.unauthorized(message: _mapAuthError(e)));
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    try {
      await Future.wait([
        _auth.signOut(),
        _googleSignIn.signOut(),
      ]);
      _currentUser = null;
      return const Right(unit);
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return const Right(unit);
    } on fb.FirebaseAuthException catch (e) {
      return Left(Failure.validationError(message: _mapAuthError(e)));
    } catch (e, _) {
      return Left(Failure.unexpected(message: e.toString(), originalError: e));
    }
  }

  @override
  Stream<User?> authStateChanges() {
    return _auth.authStateChanges().map((fbUser) {
      if (fbUser != null && !fbUser.isAnonymous) {
        return User(
          id: fbUser.uid,
          email: fbUser.email ?? '',
          displayName: fbUser.displayName,
          avatarUrl: fbUser.photoURL,
        );
      }
      return null;
    });
  }

  @override
  bool get isAuthenticated => _currentUser != null;

  String _mapAuthError(fb.FirebaseAuthException e) {
    return switch (e.code) {
      'user-not-found' => 'Пользователь не найден',
      'wrong-password' => 'Неверный пароль',
      'email-already-in-use' => 'Email уже используется',
      'weak-password' => 'Пароль слишком слабый',
      'invalid-email' => 'Некорректный email',
      'network-request-failed' => 'Ошибка сети',
      'too-many-requests' => 'Слишком много попыток. Попробуйте позже',
      _ => e.message ?? 'Ошибка авторизации',
    };
  }
}

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl();
});

final authStateProvider = StreamProvider<User?>((ref) {
  return ref.watch(authRepositoryProvider).authStateChanges();
});

final isAuthenticatedProvider = Provider<bool>((ref) {
  return ref.watch(authRepositoryProvider).isAuthenticated;
});
