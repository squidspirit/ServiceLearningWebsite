import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hiflutter/Pages/FavPage.dart';
import 'package:provider/provider.dart';
import 'Pages/MainPage.dart';
import 'AppStates/MyAppState.dart';
import 'Pages/LoginPage.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainAppState(),
      child: MaterialApp(
        initialRoute: "/",
        routes: {
          '/':(context) => MainPage(),
          '/favorites':(context) => FavPage(),
          '/login':(context) => LoginPage(),
        },
        debugShowCheckedModeBanner: false,
        title: 'fuk everyone',
        theme: ThemeData(
          //useMaterial3: true,
          scaffoldBackgroundColor: Color(0xFF1f1f1f),
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          //colorScheme: ColorScheme.fromSwatch(backgroundColor: Color(0xFF1f1f1f),cardColor: Color(0xFF1a1a1a))//ColorScheme.dark(primary: Color(0xFF1f1f1f)),
        ),
        // home: MainPage(),
      ),
    );
  }
}




