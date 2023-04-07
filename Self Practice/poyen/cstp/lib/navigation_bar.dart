// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:cstp/widgets/online_course_card.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scale = MediaQuery.of(context).size.width / 1440.0;

    return Scaffold(
      body: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: TabBar(
              tabs: [
                Tab(text: '關於我們'),
                Tab(text: '營隊活動'),
                Tab(text: '教學文章'),
                Tab(text: '線上課程'),
                Tab(text: '常見Q&A'),
              ],
              labelColor: Colors.black,
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(),
              Container(),
              Container(),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 1440.0 * scale,
                      height: 100 * scale,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 100.0 * scale,
                          height: 289.0 * scale,
                        ),
                        OnlineCourseCard(
                          imagePath: 'assets/images/breaking.jpg',
                          courseName: 'Breaking 基礎教學',
                        ),
                        SizedBox(
                          width: 95.0 * scale,
                          height: 289.0 * scale,
                        ),
                        OnlineCourseCard(
                          imagePath: 'assets/images/breaking.jpg',
                          courseName: 'Breaking 基礎教學',
                        ),
                        SizedBox(
                          width: 95.0 * scale,
                          height: 289.0 * scale,
                        ),
                        OnlineCourseCard(
                          imagePath: 'assets/images/breaking.jpg',
                          courseName: 'Breaking 基礎教學',
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 1440.0 * scale,
                      height: 60.0 * scale,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 100.0 * scale,
                          height: 289.0 * scale,
                        ),
                        OnlineCourseCard(
                          imagePath: 'assets/images/breaking.jpg',
                          courseName: 'Breaking 基礎教學',
                        ),
                        SizedBox(
                          width: 95.0 * scale,
                          height: 289.0 * scale,
                        ),
                        OnlineCourseCard(
                          imagePath: 'assets/images/breaking.jpg',
                          courseName: 'Breaking 基礎教學',
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 1440.0 * scale,
                      height: 60.0 * scale,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 100.0 * scale,
                          height: 289.0 * scale,
                        ),
                        OnlineCourseCard(
                          imagePath: 'assets/images/breaking.jpg',
                          courseName: 'Breaking 基礎教學',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
