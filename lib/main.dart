// ignore_for_file: unused_import, deprecated_member_use, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hypersafety_frontend_hack/Screens/Home_Screen.dart';
import 'package:hypersafety_frontend_hack/Screens/Add_Employee.dart';
import 'package:hypersafety_frontend_hack/Screens/Delete_Employee.dart';
import 'package:hypersafety_frontend_hack/Screens/Employee_Records.dart';
import 'package:hypersafety_frontend_hack/Screens/Reset_Record.dart';
import 'package:hypersafety_frontend_hack/Screens/Login_Screen.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// flutter pub run flutter_native_splash:create
// flutter pub run flutter_launcher_icons:main
// flutter run --no-sound-null-safety
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HyperSafety',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          iconTheme: IconThemeData(color: Colors.white),
          bottomSheetTheme:
              BottomSheetThemeData(backgroundColor: Color(0xFF243b55))),
      home: HomeScreen(),
    );
  }
}
