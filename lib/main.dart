import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:paymentintegration/logic/bloc/bloc-observer.dart';

import 'package:paymentintegration/presention/screen/register/register.dart';
import 'package:paymentintegration/presention/shared/remote/dio_helper.dart';

void main() async {
  BlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await DioHelper.init();
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment Integration',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisterScreen(),
    );
  }
}
