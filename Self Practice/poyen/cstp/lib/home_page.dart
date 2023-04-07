// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:cstp/navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Expanded(
            child: NavBar(),
          ),
        ],
      ),
    );
  }
}
