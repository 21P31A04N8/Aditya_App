import 'package:flutter/material.dart';

class Team_Mem extends StatefulWidget {
  Team_Mem({super.key, required this.imagepath});
  final String imagepath;

  @override
  State<Team_Mem> createState() => _Team_MemState();
}

class _Team_MemState extends State<Team_Mem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Team Member")),
      ),
      body: Column(
        children: [Image(image: AssetImage(widget.imagepath)), Text("Name")],
      ),
    );
  }
}
