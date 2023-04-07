// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, avoid_returning_null_for_void, file_names

import 'package:flutter/material.dart';
import 'package:online_course/Footer.dart';
import 'package:online_course/OnlineCourseCard.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: DefaultTabController(
            length: 5,
            child: Column(
              children: <Widget>[
                TabBar(
                  tabs: <Widget>[
                    Tab(text: '關於我們'),
                    Tab(text: '營隊活動'),
                    Tab(text: '教學文章'),
                    Tab(text: '線上課程'),
                    Tab(text: '常見Q&A'),
                  ],
                  labelColor: Colors.black,
                ),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      Container(
                        child: Center(),
                      ),
                      Container(
                        child: Center(),
                      ),
                      Container(
                        child: Center(),
                      ),
                      Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 100),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 100,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 47.5),
                                            child: OnlineCourseCard(
                                              imagePath: 'images/breaking.jpg',
                                              courseName: 'Breaking 基礎課程',
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 47.5),
                                            child: OnlineCourseCard(
                                              imagePath: 'images/one_punch.png',
                                              courseName: '然後我就可以扁他了，對嗎',
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 47.5),
                                            child: OnlineCourseCard(
                                              imagePath: 'images/breaking.jpg',
                                              courseName: 'Breaking 基礎課程',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 60,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 47.5),
                                            child: OnlineCourseCard(
                                              imagePath: 'images/one_punch.png',
                                              courseName: '然後我就可以扁他了，對嗎',
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 47.5),
                                            child: OnlineCourseCard(
                                              imagePath: 'images/breaking.jpg',
                                              courseName: 'Breaking 基礎課程',
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 47.5),
                                            child: OnlineCourseCard(
                                              imagePath: 'images/one_punch.png',
                                              courseName: '然後我就可以扁他了，對嗎',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 60,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 47.5),
                                            child: OnlineCourseCard(
                                              imagePath: 'images/breaking.jpg',
                                              courseName: 'Breaking 基礎課程',
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 47.5),
                                            child: OnlineCourseCard(
                                              imagePath: 'images/one_punch.png',
                                              courseName: '然後我就可以扁他了，對嗎',
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 47.5),
                                            child: OnlineCourseCard(
                                              imagePath: 'images/breaking.jpg',
                                              courseName: 'Breaking 基礎課程',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 100,
                                    ),
                                  ],
                                ),
                              ),
                              Footer(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Center(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}