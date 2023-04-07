// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:cstp/widgets/NavBar.dart';
import 'package:cstp/widgets/course_name_box.dart';

class CourseIntro extends StatefulWidget {
  const CourseIntro({Key? key}) : super(key: key);

  @override
  _CourseIntroState createState() => _CourseIntroState();
}

class _CourseIntroState extends State<CourseIntro> {
  @override
  Widget build(BuildContext context) {
    final scale = MediaQuery.of(context).size.width / 1440.0;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          NavBar(),
          Expanded(
            child: Body(),
          ),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
              coursename: 'Breaking 基礎教學',
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
                      'assets/images/one_punch.png',
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
                      '假文字假文字假文字假文字假文字假文字假文字假文字假文字假文字假文字'
                      '假文字假文字假文字假文字假文字假文字假文字假文字假文字假文字假文字'
                      '假文字假文字假文字假文字假文字假文字假文字假文字假文字假文字假文字'
                      '假文字假文字假文字假文字假文字假文字假文字假文字假文字假文字假文字'
                      '假文字假文字假文字假文字假文字假文字假文字假文字假文字假文字假文字'
                      '假文字假文字假文字假文字假文字假文字假文字假文字假文字假文字假文字'
                      '假文字假文字假文字假文字假文字假文字假文字假文字假文字假文字假文字'
                      '假文字假文字假文字假文字假文字假文字假文字假文字',
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
                    // 當按下時要執行的程式碼
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    primary: Color(0xff1f6afb),
                    onPrimary: Color(0xff1f6afb),
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
