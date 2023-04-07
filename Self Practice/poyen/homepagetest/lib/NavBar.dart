// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors, unnecessary_new, prefer_inlined_adds, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final NavItems = [
    'AboutUs',
    'Event',
    'Article',
    'OnlineCourse',
    'FAQ'
  ];

  List<Widget> NavItem() {
    return NavItems.map(
      (item) => Padding(
        padding: EdgeInsets.only(left: 30),
        child: Text(
          item,
          style: TextStyle(
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 100, right: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 222,
            height: 75,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.rectangle,
            ),
            child: Text(
              'LOGO',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ...NavItem(),
            ]..add(Container(
              width: 120,
              height: 40,
              margin: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                color: Color(0xffb0bfde),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
