import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class Thub_Events extends StatefulWidget {
  const Thub_Events({super.key});

  @override
  State<Thub_Events> createState() => _Thub_EventsState();
}

class _Thub_EventsState extends State<Thub_Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              ZoomDrawer.of(context)!.toggle();
            },
          ),
          title: Center(child: Text("Events"))),
      body: Center(child: Text("Events")),
    );
  }
}
