import 'package:flutter/material.dart';
import 'package:myapplication/T-Hub/Certifications.dart';
import 'package:myapplication/T-Hub/Team.dart';
import 'package:myapplication/T-Hub/Thub_Events.dart';
import 'package:myapplication/T-Hub/Thub_Home.dart';
import 'package:tale_drawer/tale_drawer.dart';

class thub_home extends StatefulWidget {
  const thub_home({super.key});

  @override
  State<thub_home> createState() => _thub_homeState();
}

class _thub_homeState extends State<thub_home> {
  var titles=["Home","Events","Certifications","Team"];
  var appbarColors=[Colors.grey,Colors.blueAccent,Colors.deepPurpleAccent[600],Colors.white];
  var lst=[Thub_Home(),Thub_Events(),Certifications(),Team()];
  int i=0;
  final controller = TaleController();
  @override
  Widget build(BuildContext context) {
    return TaleDrawer(
      controller: controller,
      drawer: Container(
        color: Colors.grey,
        child: ListView(
          children: [
            ListTile(
              onTap: (){
                controller.close();
                setState(() {
                  i=0;
                });
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              onTap: (){
                controller.close();
                setState(() {
                  i=1;
                });
              },
              leading: Icon(Icons.event),
              title: Text("Events"),
            ),
            ListTile(
              onTap: (){
                controller.close();
                setState(() {
                  i=2;
                });
              },
              leading: Icon(Icons.file_copy_outlined),
              title: Text("Certification"),
            ),
            ListTile(
              onTap: (){
                controller.close();
                setState(() {
                  i=3;
                });
              },
              leading: Icon(Icons.group),
              title: Text("Team"),
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text("Contact Us"),
            ),
          ],
        ),
      ),
      type: TaleType.Flip,
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: appbarColors[i],
          title: Center(child: Text(titles[i])),
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {
            controller.open();
            setState(() {
            });
          },),
        ),
        body: lst[i],
      ),
    );
  }
}
