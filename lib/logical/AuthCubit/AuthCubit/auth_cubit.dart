import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  int currentStep = 0;

  pressedOnContinuos() {
    currentStep++;
    emit(StepperPressedOnContinousSuccess());
  }

  pressedOnCancel() {
    currentStep--;
    emit(StepperPressedOnCancelSuccess());
  }
}
