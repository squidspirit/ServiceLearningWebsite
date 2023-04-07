// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, avoid_returning_null_for_void, file_names

import 'package:flutter/material.dart';

class CourseIntro extends StatelessWidget {
  final String courseName;
  const CourseIntro({super.key, required this.courseName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: Container(
              alignment: Alignment.centerLeft,
              width: 830,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xfff2f4ff),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Text(
                    courseName,
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
