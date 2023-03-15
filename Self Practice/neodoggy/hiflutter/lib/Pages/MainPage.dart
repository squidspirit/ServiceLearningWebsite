import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:like_button/like_button.dart';
import 'package:flutter/src/widgets/implicit_animations.dart';
import '../Widgets/BigCard.dart';
import '../AppStates/MyAppState.dart';
import '../Widgets/NavBar.dart';
import '../Widgets/AppBar.dart';
import '../Widgets/ClassCard.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MainPage> with TickerProviderStateMixin {

  late TabController _tabController;
  // final String title;
  final ScrollController _firstController = ScrollController();
  bool isLiked = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MainAppState>();
    var card = appState.current;
    IconData icon;
    if (appState.favorites.contains(card)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Scaffold(
      drawer: NavBar(),
      body:NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            AppBar_TB(
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(86),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 50),
                    child: Theme(
                      data: ThemeData().copyWith(splashColor: Colors.transparent),
                      child: TabBar(
                        overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
                        // enableFeedback: true,
                        isScrollable: true,
                        unselectedLabelColor: Color(0xFF858585),
                        controller: _tabController,
                        indicatorColor: Colors.transparent,
                        indicator: BoxDecoration(
                          border: Border(
                            top: BorderSide(width: 3.0, color: Color(0xFF00ba7c)),
                            // bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
                          ),
                        ),
                        // UnderlineTabIndicator(
                        //     //borderSide: BorderSide(width: 2),
                        //     insets: EdgeInsets.symmetric(horizontal:16.0)
                        // ),
                        tabs: [
                          Tab(
                            icon: Row(
                              children: [
                                Icon(Icons.home),
                                SizedBox(width: 5,),
                                Text("管理課程"),
                              ],
                            ),
                          ),
                          Tab(
                            icon: Row(
                              children: [
                                Icon(Icons.web),
                                SizedBox(width: 5,),
                                Text("管理帳號"),
                              ],
                            ),
                          ),
                          Tab(
                            icon: Row(
                              children: [
                                Icon(Icons.home),
                                SizedBox(width: 5,),
                                Text("發布文章"),
                              ],
                            ),
                          ),
                          Tab(
                            icon: Row(
                              children: [
                                Icon(Icons.home),
                                SizedBox(width: 5,),
                                Text("其他"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: TabBarView(controller: _tabController, children: [
          LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
                  child: Container(
                    padding: EdgeInsets.only(left: 50,right: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // Below are for Wrap
                      // direction: Axis.horizontal,
                      // spacing: 0, // gap between adjacent chips
                      // runSpacing: 0, // gap between lines
                      children: [
                        SizedBox(height: 20,),
                        Text('最新活動',style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 20),),
                        SizedBox(height: 5,),
                        ShaderMask(
                          shaderCallback: (Rect rect) {
                            return LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                              colors: [
                                Color(0xFF1f1f1f),
                                Colors.transparent,
                                Colors.transparent,
                                Color(0xFF1f1f1f)
                              ],
                              stops: [0.0, 0.01, 0.95, 1],
                            ).createShader(rect);
                          },
                          blendMode: BlendMode.dstOut,
                          child: Container(
                            height: 180,
                            padding: EdgeInsets.only(right: 5),
                            child: Scrollbar(
                              thumbVisibility: true,
                              controller: _firstController,
                              child: Container(
                                height: 180,
                                child: ListView.builder(
                                  controller: _firstController,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 5,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Color(0xFF1a1a1a),
                                        ),
                                        width: 400,
                                        height: 180,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        child: Container(
                                          height: 180,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              BigCard(card: card),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  SizedBox(width: 10),
                                                  LikeButton(
                                                    size: 25,
                                                    isLiked: isLiked,
                                                    likeBuilder: (isLiked) {
                                                      final color = isLiked
                                                          ? Color(0xFFff4060)
                                                          : Color(0xFFFFFFFF);
                                                      return Icon(
                                                          isLiked
                                                              ? Icons.favorite
                                                              : Icons.favorite_border,
                                                          color: color,
                                                          size: 25);
                                                    },
                                                    circleColor: const CircleColor(
                                                        start: Color(0xFFff4060),
                                                        end: Color(0xFFff4060)),
                                                    bubblesColor: const BubblesColor(
                                                      dotPrimaryColor: Color(0xFFff4060),
                                                      dotSecondaryColor: Color(0xFFff4060),
                                                    ),
                                                    onTap: (isLiked) async {
                                                      this.isLiked = !isLiked;
                                                      this.isLiked
                                                          ? appState.addFavorite()
                                                          : appState.delFavorite();
                                                      return !isLiked;
                                                    },
                                                  ),
                                                  Spacer(),
                                                  //SizedBox(width: 10),
                                                  ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                      minimumSize: Size.zero,
                                                      padding: EdgeInsets.all(0),
                                                    ),
                                                    onPressed: () {
                                                      this.isLiked = false;
                                                      appState.getNext();
                                                      //appState.listCur();
                                                    },
                                                    child: AnimatedContainer(
                                                      // transform: Matrix4.rotationZ(360),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(3),
                                                        color: isLiked
                                                            ? Color(0xFF00ba7c)
                                                            : Color(0xFF0096fa),
                                                      ),
                                                      padding: EdgeInsets.symmetric(
                                                          horizontal: 15, vertical: 6),
                                                      duration: Duration(milliseconds: 500),
                                                      child: Center(
                                                        child: Text(
                                                          'Next',
                                                          style: TextStyle(
                                                            color: Color(0xFFFFFFFF),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 10),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          LayoutBuilder(
            builder:(BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
                  child: Container(
                    padding: EdgeInsets.only(left: 50,right: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // Below are for Wrap
                      // direction: Axis.horizontal,
                      // spacing: 0, // gap between adjacent chips
                      // runSpacing: 0, // gap between lines
                      children: [
                        SizedBox(height: 20,),
                        Text('學生',style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 20),),
                        SizedBox(height: 5,),
                        Container(
                          //padding: EdgeInsets.only(left: 50),
                          child: Column(
                            children: [
                              // ClassCard(Name: "線上課程", Student: "國高中職生", Where: "工程五館"),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          LayoutBuilder(
            builder:(BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
                  child: Container(
                    padding: EdgeInsets.only(left: 50,right: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // Below are for Wrap
                      // direction: Axis.horizontal,
                      // spacing: 0, // gap between adjacent chips
                      // runSpacing: 0, // gap between lines
                      children: [
                        SizedBox(height: 20,),
                        Text('文章',style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 20),),
                        SizedBox(height: 5,),
                        Container(
                          //padding: EdgeInsets.only(left: 50),
                          child: Column(
                            children: [
                              BigCard(card: card),
                              BigCard(card: card),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          LayoutBuilder(
            builder:(BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
                  child: Container(
                    padding: EdgeInsets.only(left: 50,right: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // Below are for Wrap
                      // direction: Axis.horizontal,
                      // spacing: 0, // gap between adjacent chips
                      // runSpacing: 0, // gap between lines
                      children: [
                        SizedBox(height: 20,),
                        Text('其他',style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 20),),
                        SizedBox(height: 5,),
                        Container(
                          //padding: EdgeInsets.only(left: 50),
                          child: Column(
                            children: [
                              BigCard(card: card),
                              BigCard(card: card),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ]),
      )
    );
  }
}
