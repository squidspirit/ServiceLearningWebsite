// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, avoid_returning_null_for_void, file_names

import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Color(0xff102542),
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Text(
        '單位：國立中央大學資訊工程學系\n'
        '地址：(320317) 桃園市中壢區中大路 300 號\n'
        '聯絡電話：03-422-7151\n'
        'Email：ncu4500@ncu.edu.tw',
        softWrap: true,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
      ),
    );
  }
}