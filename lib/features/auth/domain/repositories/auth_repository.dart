import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/auth/domain/entities/user.dart';

enum AuthProvider { email, google, apple }

abstract class AuthRepository {
  Future<Either<Failure, User?>> getCurrentUser();
  Future<Either<Failure, User>> signInWithEmail(
    String email,
    String password,
  );
  Future<Either<Failure, User>> signUpWithEmail(
    String email,
    String password,
  );
  Future<Either<Failure, User>> signInWithGoogle();
  Future<Either<Failure, User>> signInWithApple();
  Future<Either<Failure, Unit>> signOut();
  Future<Either<Failure, Unit>> resetPassword(String email);
  Stream<User?> authStateChanges();
  bool get isAuthenticated;
}
