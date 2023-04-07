import 'package:flutter/material.dart';
import 'CustomPageRoute.dart';
import '../Pages/FavPage.dart';
import '../Pages/LoginPage.dart';


class AppBar_TB extends StatelessWidget {
  AppBar_TB({
    super.key,
    required this.bottom,
  });

  PreferredSizeWidget bottom;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Row(
        children: [
          Icon(Icons.logo_dev),
          SizedBox(width: 3),
          Text('ServiceSite_LOGO'),
        ],
      ),
      backgroundColor: Color(0xFF1f1f1f),
      pinned: false,
      elevation: 0,
      //floating: true,
      //forceElevated: innerBoxIsScrolled,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              Builder(builder: (BuildContext context) {
                return IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(CustomPageRoute(builder: (BuildContext context){return FavPage();}));
                    },
                    tooltip: 'Show Favourites',
                    icon: Icon(Icons.favorite));
              }),
              SizedBox(width: 10),
              Builder(builder: (BuildContext context){
                return IconButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(CustomPageRoute(builder: (BuildContext context){return LoginPage();}));
                    },
                    icon: Icon(Icons.account_circle));
              }),
              SizedBox(width: 10),
              // Icon(Icons.more_vert),
            ],
          ),
        ),
      ],
      bottom: bottom,
    );
  }
}

class AppBar_NTB extends StatelessWidget {
  AppBar_NTB({
    super.key,
    // required this.bottom,
  });


  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Row(
        children: [
          Icon(Icons.logo_dev),
          SizedBox(width: 3),
          Text('ServiceSite_LOGO'),
        ],
      ),
      backgroundColor: Color(0xFF1f1f1f),
      pinned: false,
      elevation: 0,
      //floating: true,
      //forceElevated: innerBoxIsScrolled,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              Builder(builder: (BuildContext context) {
                return IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(CustomPageRoute(builder: (BuildContext context){return FavPage();}));
                    },
                    tooltip: 'Show Favourites',
                    icon: Icon(Icons.favorite));
              }),
              SizedBox(width: 10),
              Builder(builder: (BuildContext context){
                return IconButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(CustomPageRoute(builder: (BuildContext context){return LoginPage();}));
                    },
                    icon: Icon(Icons.account_circle));
              }),
              SizedBox(width: 10),
              // Icon(Icons.more_vert),
            ],
          ),
        ),
      ],
    );
  }
}