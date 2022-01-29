// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use, avoid_print, file_names, prefer_const_constructors, duplicate_ignore, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_element, non_constant_identifier_names, unused_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hypersafety_frontend_hack/API_NodeJS/API_NodeJS.dart';
import 'package:hypersafety_frontend_hack/Screens/Add_Employee.dart';
import 'package:hypersafety_frontend_hack/Screens/Delete_Employee.dart';
import 'package:hypersafety_frontend_hack/Screens/Employee_Records.dart';
import 'package:hypersafety_frontend_hack/Screens/Reset_Record.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:back_button_interceptor/back_button_interceptor.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    BackButtonInterceptor.add(myInterceptor);
  }

  bool myInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
    return true;
  }

  Widget _buildAddEmployeeBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        child: Container(
          child: Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset("assets/Images/Add_Employee.png",
                    width: 40.0, height: 40.0),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'ADD EMPLOYEE',
                  style: TextStyle(
                    color: Color(0xFF527DAA),
                    letterSpacing: 1.25,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),
              )
            ],
          ),
        ),
        splashColor: Colors.lightGreenAccent,
        elevation: 5.0,
        onPressed: () {
          _navigateToNextScreen(context, AddEmployeeScreen());
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
      ),
    );
  }

  Widget _buildDelEmployeebtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        child: Container(
          child: Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset("assets/Images/Del_Employee.png",
                    width: 40.0, height: 40.0),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'DELETE EMPLOYEE',
                  style: TextStyle(
                    color: Color(0xFF527DAA),
                    letterSpacing: 1.25,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),
              )
            ],
          ),
        ),
        splashColor: Colors.lightGreenAccent,
        elevation: 5.0,
        onPressed: () {
          _navigateToNextScreen(context, DeleteEmployeeScreen());
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
      ),
    );
  }

  Widget _buildDispEmployeebtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        child: Container(
          child: Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset("assets/Images/Emp_Records.png",
                    width: 40.0, height: 40.0),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'DISPLAY EMPLOYEES',
                  style: TextStyle(
                    color: Color(0xFF527DAA),
                    letterSpacing: 1.25,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),
              )
            ],
          ),
        ),
        splashColor: Colors.lightGreenAccent,
        elevation: 5.0,
        onPressed: () {
          _navigateToNextScreen(context, FetchEmployeeRecordsScreen());
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
      ),
    );
  }

  Widget _buildResetRecordbtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        child: Container(
          child: Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset("assets/Images/Reset_Records.png",
                    width: 40.0, height: 37),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'RESET RECORDS',
                  style: TextStyle(
                    color: Color(0xFF527DAA),
                    letterSpacing: 1.25,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),
              )
            ],
          ),
        ),
        splashColor: Colors.lightGreenAccent,
        elevation: 5.0,
        onPressed: () {
          _navigateToNextScreen(context, ResetRecordScreen());
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF004e92),
                      Color(0xFF00095b),
                      Color(0xFF000742),
                    ],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding:
                      EdgeInsets.symmetric(vertical: 35.0, horizontal: 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(45.0, 3.0, 0, 0),
                            child: Container(
                              child: Text(
                                'HyperSafety',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'OpenSans',
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                color: Colors.amber[900],
                                icon: Icon(
                                  Icons.power_settings_new_rounded,
                                  size: 35.0,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: SingleChildScrollView(
                          physics: AlwaysScrollableScrollPhysics(),
                          padding: EdgeInsets.symmetric(
                            horizontal: 40.0,
                            vertical: 60.0,
                          ),
                          child: Column(
                            children: <Widget>[
                              _buildAddEmployeeBtn(),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10)),
                              _buildDispEmployeebtn(),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10)),
                              _buildResetRecordbtn(),
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10)),
                              _buildDelEmployeebtn(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context, NewScreen) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => NewScreen));
  }
}
