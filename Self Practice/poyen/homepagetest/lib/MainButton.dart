// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final List<Color> colors;
  final String text;
  final bool isOnLight;

  MainButton(this.colors, this.text, this.isOnLight);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Color(0xff6078ea),
            offset: Offset(0, 8),
            blurRadius: 8,
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            isOnLight
                ? Icon(
                    Icons.play_circle_fill,
                    color: Color(0xffb0bfde),
                  )
                : Container(),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: isOnLight ? Color(0xff7c8fb5) : Colors.white,
                fontFamily: 'Quicksand',
                letterSpacing: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
