import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'componets/App_Manager/routes_manager.dart';
import 'logical/classobserve.dart';
void main()async {
 Bloc.observer = MyBlocObserver();
 WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: '',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //! this for Navigations
        initialRoute:  Routes.register,
        onGenerateRoute: AppRoutes.routeGenerate,
        // home: const AnimationScreen(),
      ),
    );
  }
}
