import 'package:flutter/material.dart';
import 'package:hiflutter/main.dart';

class ClassCard extends StatelessWidget {
  ClassCard({
    super.key,
    required this.Name,
    required this.Student,
    required this.Where,
    required this.Add_In,
  });

  String Name;
  String Student;
  String Where;
  bool Add_In;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 435,
      width: 300,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        color: Color(0xFFfafafa),
        elevation: 0,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 300,
                height: 180,
                child: Card(
                  elevation: 0,
                  color: Color(0xFFf5f5f5),
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 25,bottom: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.drive_file_rename_outline_rounded,color: Color(0xFF00ba7c),size: 26,),
                      SizedBox(width: 10,),
                      Text(Name,style: TextStyle(color: Color(0xFF1f1f1f),fontSize: 16,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Row(
                    children: [
                      Icon(Icons.account_circle,color: Color(0xFF1d9bf0),size: 26,),
                      SizedBox(width: 10,),
                      Text(Student,style: TextStyle(color: Color(0xFF1f1f1f),fontSize: 16,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Row(
                    children: [
                      Icon(Icons.pin_drop_rounded,color: Color(0xFFff4060),size: 26,),
                      SizedBox(width: 10,),
                      Text(Where,style: TextStyle(color: Color(0xFF1f1f1f),fontSize: 16,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(height: 6,),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Add_In ? Color(0xFFff4060) : Color(0xFF00ba7c),
                    minimumSize: Size.zero,
                    padding: EdgeInsets.all(10),
                  ),
                  onPressed: (){},
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Add_In ? Text("加入課程") : Text("進入課程"),
                  )),
            ),
            SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }
}