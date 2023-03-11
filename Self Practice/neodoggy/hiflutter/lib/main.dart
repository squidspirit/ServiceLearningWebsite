import 'dart:ui';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './BigCard.dart';
import './MainPage.dart';
import './MyAppState.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainAppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'fuk everyone',
        theme: ThemeData(
          //useMaterial3: true,
          scaffoldBackgroundColor: Color(0xFF1f1f1f),
          //colorScheme: ColorScheme.fromSwatch(backgroundColor: Color(0xFF1f1f1f),cardColor: Color(0xFF1a1a1a))//ColorScheme.dark(primary: Color(0xFF1f1f1f)),
        ),
        home: MainPage(),
      ),
    );
  }
}




