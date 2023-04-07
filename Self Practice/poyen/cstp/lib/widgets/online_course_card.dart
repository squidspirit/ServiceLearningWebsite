// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:cstp/course_intro.dart';
import 'package:flutter/material.dart';

class OnlineCourseCard extends StatelessWidget {
  final String imagePath;
  final String courseName;

  const OnlineCourseCard(
      {Key? key, required this.imagePath, required this.courseName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scale = MediaQuery.of(context).size.width / 1440.0;

    return Container(
      width: 350.0 * scale,
      height: 300.0 * scale,
      decoration: BoxDecoration(
        color: Color(0xffd6e4ff),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 350.0 * scale,
            height: 200 * scale,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CourseIntro()));
                },
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 0.0),
              child: Text(
                courseName,
                style: TextStyle(
                  fontSize: 24.0 * scale,
                  fontWeight: FontWeight.w400,
                  height: 29.0 / 24.0,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
