// ignore_for_file: unused_import, deprecated_member_use, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hypersafety_frontend_hack/Screens/Home_Screen.dart';
import 'package:hypersafety_frontend_hack/Screens/Add_Employee.dart';
import 'package:hypersafety_frontend_hack/Screens/Delete_Employee.dart';
import 'package:hypersafety_frontend_hack/Screens/Employee_Records.dart';
import 'package:hypersafety_frontend_hack/Screens/Reset_Record.dart';
import 'package:hypersafety_frontend_hack/Screens/Login_Screen.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// flutter run --no-sound-null-safety
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HyperSafety-Frontend-Hack',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // dividerColor: Colors.blueGrey,
          iconTheme: IconThemeData(color: Colors.white),
          bottomSheetTheme:
              BottomSheetThemeData(backgroundColor: Color(0xFF243b55))),
      home: LoginScreen(),
    );
  }
}
