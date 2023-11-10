import 'package:flutter/material.dart';

class Technology extends StatefulWidget {
  const Technology({super.key});

  @override
  State<Technology> createState() => _TechnologyState();
}

class _TechnologyState extends State<Technology> {
  @override
  Widget build(BuildContext context) {
    int h = MediaQuery.of(context).size.height.toInt();
    int w = MediaQuery.of(context).size.width.toInt();
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Technologies"))),
        body: SizedBox(
          height: h / 5,
          width: w / 2,
          child: Card(
            child: Image.asset("assets/Thub/Technologies/arvrd.png"),
          ),
        ));
  }
}
