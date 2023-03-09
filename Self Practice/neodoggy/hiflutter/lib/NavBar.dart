import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF1f1f1f),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 56,
              child: Theme(
                data: Theme.of(context).copyWith(
                  dividerTheme: const DividerThemeData(color: Colors.transparent),
                ),
                child: DrawerHeader(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          padding: EdgeInsets.only(bottom: 4),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.menu),color: Color(0xFFFFFFFF),),
                      SizedBox(width: 20),
                      Icon(Icons.logo_dev,color: Color(0xFFFFFFFF),),
                      SizedBox(width: 3),
                      Text(
                        'ServiceSite_LOGO',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Item 1',
                style: TextStyle(color: Color(0xFFFFFFFF)),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Item 2',
                style: TextStyle(color: Color(0xFFFFFFFF)),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
