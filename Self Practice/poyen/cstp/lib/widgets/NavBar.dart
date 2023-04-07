// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors, unnecessary_new, prefer_inlined_adds, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final NavItems = ['AboutUs', 'Event', 'Article', 'OnlineCourse', 'FAQ'];

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
    final scale = MediaQuery.of(context).size.width / 1440.0;

    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 50.0 * scale,
            right: 50.0 * scale,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 222.0 * scale,
                height: 75.0 * scale,
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
              SizedBox(
                width: 1062.0 * scale,
                height: 75.0 * scale,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ...NavItem(),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40.0 * scale,
        ),
        Container(
          alignment: Alignment.center,
          width: 1340.0 * scale,
          height: 1.0 * scale,
          color: Colors.grey,
        ),
      ],
    );
  }
}
