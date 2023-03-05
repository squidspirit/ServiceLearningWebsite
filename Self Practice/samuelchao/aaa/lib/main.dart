import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() =>runApp(MyApp());



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}
var printstring = 'Button Press';
var tmp = 1;
var showtext = 'Button Not Pressed';
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Column(
        children: [
          Text('A random  AWESOME idea:'),
          Text(appState.current.asLowerCase),
          Text(showtext),
          ElevatedButton(
            onPressed: () {
              showtext = printstring + tmp.toString();
            },
            child: Text('Press It Noob'),
          ),
        ],
      ),
    );
  }


}