import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:like_button/like_button.dart';
import 'package:flutter/src/widgets/implicit_animations.dart';
import './BigCard.dart';
import './MyAppState.dart';
import './NavBar.dart';
import './MainPage.dart';
import './LoginPage.dart';

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<FavPage> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        drawer: NavBar(),
        body:NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
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
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => FavPage()));
                              },
                              tooltip: 'Show Favourites',
                              icon: Icon(Icons.favorite));
                        }),
                        SizedBox(width: 10),
                        Builder(builder: (BuildContext context){
                          return IconButton(
                              onPressed: (){
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
                              },
                              icon: Icon(Icons.account_circle));
                        }),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ];
          },
          body: LayoutBuilder(
            builder:(BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
                  child: Container(
                    padding: EdgeInsets.only(left: 50,right: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Text('最愛課程',style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 20),),
                        SizedBox(height: 30,),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
    );
  }
}
