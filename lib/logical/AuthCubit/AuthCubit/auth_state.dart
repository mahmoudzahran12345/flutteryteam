part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class StepperPressedOnContinousSuccess extends AuthState {}
class StepperPressedOnCancelSuccess extends AuthState {}
