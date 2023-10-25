import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:myapplication/Courses/Btech/ACET/Acet_home.dart';
import 'package:myapplication/Courses/Btech/ACOE/Acoe_home.dart';

class Btech extends StatefulWidget {
  const Btech({super.key});

  @override
  State<Btech> createState() => _BtechState();
}

class _BtechState extends State<Btech> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu),onPressed: (){
          ZoomDrawer.of(context)!.toggle();
        },),
        title: Center(child: Text("Btech")),),
      body: ListView(
        children: [
          ListTile(
            title: Text("Aditya College Engineering"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Acet_home()));
            },
            title: Text("Aditya College of Engineering And Technology"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Acoe_home()));
            },
            title: Text("Aditya college of Engineering"),
          ),
        ],
      ),
    );
  }
}
