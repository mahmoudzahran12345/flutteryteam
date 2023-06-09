import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:w3schools/logical/AuthCubit/AuthCubit/auth_cubit.dart';
import 'package:w3schools/screens/register/widgets/BasicInfoFirstStepWidget.dart';
import 'package:w3schools/screens/register/widgets/DetailedInfoSecondStepWidget.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  //! dont forget to add new controllers for detailed info

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          var authCubit = BlocProvider.of<AuthCubit>(context);
          List<Step> getSteps() => [
                Step(
                  isActive: authCubit.currentStep == 0,
                  title: const Text('Basic Info'),
                  content: BasicInfoFirstStepWidget(),
                ),
                Step(
                  isActive: authCubit.currentStep >= 1,
                  title: const Text('Detailed Info'),
                  content: DetailedInfoSecondStepWidget(),
                ),
              ];

          return Scaffold(
            body: SafeArea(
                child: Stepper(
              physics: const BouncingScrollPhysics(),
              type: StepperType.vertical,
              currentStep: authCubit.currentStep,
              steps: getSteps(),
              onStepContinue: () {
                if (authCubit.currentStep == getSteps().length - 1) {
                  null;
                } else {
                  authCubit.pressedOnContinuos();
                }
              },
              onStepCancel: () {
                if (authCubit.currentStep == 0) {
                  null;
                } else {
                  authCubit.pressedOnCancel();
                }
              },
              stepIconBuilder: (stepIndex, stepState) {
                return Container(
                  decoration: BoxDecoration(
                    color: authCubit.currentStep > stepIndex
                        ? Colors.green
                        : Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    authCubit.currentStep > stepIndex
                        ? Icons.done
                        : Icons.do_not_disturb,
                    color: Colors.white,
                  ),
                );
              },
            )),
          );
        },
      ),
    );
  }
}
