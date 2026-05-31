import 'package:dartz/dartz.dart';
import 'package:quran_app/core/errors/failures.dart';
import 'package:quran_app/features/auth/domain/entities/user.dart';
import 'package:quran_app/features/auth/domain/repositories/auth_repository.dart';

class GetCurrentUser {
  final AuthRepository _repository;
  GetCurrentUser(this._repository);
  Future<Either<Failure, User?>> call() => _repository.getCurrentUser();
}

class SignInWithEmail {
  final AuthRepository _repository;
  SignInWithEmail(this._repository);
  Future<Either<Failure, User>> call(String email, String password) =>
      _repository.signInWithEmail(email, password);
}

class SignUpWithEmail {
  final AuthRepository _repository;
  SignUpWithEmail(this._repository);
  Future<Either<Failure, User>> call(String email, String password) =>
      _repository.signUpWithEmail(email, password);
}

class SignInWithGoogle {
  final AuthRepository _repository;
  SignInWithGoogle(this._repository);
  Future<Either<Failure, User>> call() => _repository.signInWithGoogle();
}

class SignInWithApple {
  final AuthRepository _repository;
  SignInWithApple(this._repository);
  Future<Either<Failure, User>> call() => _repository.signInWithApple();
}

class SignOut {
  final AuthRepository _repository;
  SignOut(this._repository);
  Future<Either<Failure, Unit>> call() => _repository.signOut();
}

class ResetPassword {
  final AuthRepository _repository;
  ResetPassword(this._repository);
  Future<Either<Failure, Unit>> call(String email) =>
      _repository.resetPassword(email);
}
