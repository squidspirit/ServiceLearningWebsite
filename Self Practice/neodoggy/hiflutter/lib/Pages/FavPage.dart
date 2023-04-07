import 'package:flutter/material.dart';
import '../Widgets/NavBar.dart';
import '../Widgets/AppBar.dart';
import '../Widgets/ClassCard.dart';

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<FavPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final ScrollController _firstController = ScrollController();

    List<ClassCard> AllC = [
      ClassCard(Name: "服學課程", Student: "大一新生", Where: "工五A204", Add_In: true),
      ClassCard(Name: "服學課程", Student: "大一新生", Where: "工五A204", Add_In: false),
      ClassCard(Name: "服學課程", Student: "大一新生", Where: "工五A204", Add_In: true),
      ClassCard(Name: "服學課程", Student: "大一新生", Where: "工五A204", Add_In: true),
      ClassCard(Name: "服學課程", Student: "大一新生", Where: "工五A204", Add_In: true),
      ClassCard(Name: "服學課程", Student: "大一新生", Where: "工五A204", Add_In: true),
      ClassCard(Name: "服學課程", Student: "大一新生", Where: "工五A204", Add_In: true),
    ];

    return Scaffold(
        drawer: NavBar(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              AppBar_NTB(),
            ];
          },
          body: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints:
                      BoxConstraints(minHeight: viewportConstraints.maxHeight),
                  child: Container(
                    padding: EdgeInsets.only(left: 50, right: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '最愛課程',
                          style:
                              TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Wrap(
                          spacing: 10.0,
                          runSpacing: 10.0,
                          children: [
                            for(ClassCard i in AllC)
                              i,
                          ],
                        ),
                        // Container(
                        //   height: 435,
                        //   child: ListView.builder(
                        //     controller: _firstController,
                        //     itemCount: AllC.length,
                        //     scrollDirection: Axis.horizontal,
                        //     itemBuilder: (BuildContext context, int index) {
                        //       return AllC[index];
                        //     },
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
