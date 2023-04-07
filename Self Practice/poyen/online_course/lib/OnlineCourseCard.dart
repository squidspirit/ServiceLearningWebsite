// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, avoid_returning_null_for_void, file_names

import 'package:flutter/material.dart';
import 'package:online_course/CourseIntro.dart';

class OnlineCourseCard extends StatelessWidget {
  final String imagePath;
  final String courseName;

  const OnlineCourseCard({Key? key, required this.imagePath, required this.courseName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 300,
      decoration: BoxDecoration(
        color: Color(0xffd6e4ff),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 350,
            height: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => CourseIntro(courseName: courseName)),
                  );
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
              margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
              child: Text(
                courseName,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  height: 1.2,
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