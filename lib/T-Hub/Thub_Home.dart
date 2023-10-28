import 'package:flutter/material.dart';
import 'package:myapplication/T-Hub/Certifications.dart';
import 'package:myapplication/T-Hub/Team.dart';
import 'package:myapplication/T-Hub/Thub_Events.dart';
import 'package:tale_drawer/tale_drawer.dart';

class thub_home extends StatefulWidget {
  const thub_home({super.key});

  @override
  State<thub_home> createState() => _thub_homeState();
}

class _thub_homeState extends State<thub_home> {
  var lst=[Thub_Home(),Thub_Events(),Certifications(),Team()];
  int i=0;
  final controller = TaleController();
  @override
  Widget build(BuildContext context) {
    return TaleDrawer(
      controller: controller,
      drawer: Container(
        color: Colors.orangeAccent,
        child: ListView(
          children: [
            ListTile(
              onTap: (){
                setState(() {
                  i=0;
                });
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              onTap: (){
                setState(() {
                  i=1;
                });
              },
              leading: Icon(Icons.event),
              title: Text("Events"),
            ),
            ListTile(
              onTap: (){
                setState(() {
                  i=2;
                });
              },
              leading: Icon(Icons.file_copy_outlined),
              title: Text("Certification"),
            ),
            ListTile(
              onTap: (){
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
      body: lst[i],
    );
  }
}
class Thub_Home extends StatefulWidget {
  const Thub_Home({super.key});

  @override
  State<Thub_Home> createState() => _Thub_HomeState();
}

class _Thub_HomeState extends State<Thub_Home> {
  final controller = TaleController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home")),
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {
          controller.open();
          setState(() {
          });
        },),
      ),
      body: Center(child: Text("Welcome to T-Hub")),
    );
  }
}
