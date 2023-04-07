import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My first APP"),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
          child: Text("Hello Flutter",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40.0, color: Colors.blue))),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            SizedBox(
                height: 100.0,
                child: DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text(
                    "Drawer Header",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            ListTile(
              title: Text("選項一", style: TextStyle(fontSize: 20.0)),
            ),
            ListTile(
              title: Text("選項二", style: TextStyle(fontSize: 20.0)),
            ),
            ListTile(
              title: Text("選項三", style: TextStyle(fontSize: 20.0)),
            )
          ],
        ),
      ),
    );
  }
}
