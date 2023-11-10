import 'package:flutter/material.dart';

class Team_Mem extends StatefulWidget {
  Team_Mem({super.key, required this.imagepath, required this.teamname});
  final String imagepath;
  final String teamname;

  @override
  State<Team_Mem> createState() => _Team_MemState();
}

class _Team_MemState extends State<Team_Mem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image(image: AssetImage(widget.imagepath)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      widget.teamname,
                      style: TextStyle(fontSize: 32),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Profession",
                  style: TextStyle(color: Colors.black54, fontSize: 20),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
