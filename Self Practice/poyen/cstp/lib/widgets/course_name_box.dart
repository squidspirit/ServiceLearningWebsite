// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CourseNameBox extends StatelessWidget {
  final String coursename;

  const CourseNameBox({super.key, required this.coursename});

  @override
  Widget build(BuildContext context) {
    final scale = MediaQuery.of(context).size.width / 1440.0;

    return Container(
      padding: EdgeInsets.only(
        left: 40.0 * scale,
        top: 22.0 * scale,
      ),
      width: 830.0 * scale,
      height: 101.0 * scale,
      decoration: BoxDecoration(
        color: Color(0xffd6e4ff),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        coursename,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 48.0 * scale,
          fontWeight: FontWeight.w400,
          height: 58.0 / 48.0,
          color: Colors.black,
        ),
      ),
    );
  }
}
