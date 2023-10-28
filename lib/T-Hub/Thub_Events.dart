import 'package:flutter/material.dart';
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
        title: Center(child: Text("Events")),
      ),
    );
  }
}
