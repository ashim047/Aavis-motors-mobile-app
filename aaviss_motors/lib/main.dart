import 'package:aaviss_motors/Features/Presentation/personnel_data.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Models.dart/data_model/user_info/user_data.dart';

void main() {
  runApp(GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  final Users userDetails = Users();

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Inter',
          primarySwatch: Colors.blue,
        ),
        home: PersonalData(userDetails: userDetails),
      ),
      designSize: Size(400, 800),
    );
  }
}
