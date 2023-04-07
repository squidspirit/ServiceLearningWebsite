// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:cstp/widgets/NavBar.dart';
import 'package:cstp/widgets/course_name_box.dart';

class CourseIntro extends StatelessWidget {
  final String imagePath;
  final String courseName;
  final String introCtx;

  const CourseIntro(
      {Key? key,
      required this.imagePath,
      required this.courseName,
      required this.introCtx})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          NavBar(),
          Expanded(
            child: Body(
                courseName: courseName,
                imagePath: imagePath,
                introCtx: introCtx),
          ),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  final String imagePath;
  final String courseName;
  final String introCtx;

  const Body(
      {Key? key,
      required this.imagePath,
      required this.courseName,
      required this.introCtx})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scale = MediaQuery.of(context).size.width / 1440.0;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 100.0 * scale),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 1440.0 * scale,
              height: 60.0 * scale,
            ),
            CourseNameBox(
              coursename: courseName,
            ),
            SizedBox(
              width: 1440.0 * scale,
              height: 60.0 * scale,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 387.0 * scale,
                    height: 471.0 * scale,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100.0 * scale,
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 753.0 * scale,
                    child: Text(
                      introCtx,
                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 32.0 * scale,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80.0 * scale,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 1000.0 * scale,
                  height: 77.0 * scale,
                ),
                ElevatedButton(
                  onPressed: () {
                    // 當按下時要跳到一個頁面
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Color(0xff1f6afb),
                    backgroundColor: Color(0xff1f6afb),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    minimumSize: Size(240.0 * scale, 77.0 * scale),
                  ),
                  child: Text(
                    '進入課程',
                    style: TextStyle(
                      fontSize: 32.0 * scale,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.0 * scale,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
