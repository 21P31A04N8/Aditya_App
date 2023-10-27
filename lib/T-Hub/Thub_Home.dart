import 'package:flutter/material.dart';
import 'package:tale_drawer/tale_drawer.dart';

class thub_home extends StatefulWidget {
  const thub_home({super.key});

  @override
  State<thub_home> createState() => _thub_homeState();
}

class _thub_homeState extends State<thub_home> {
  final controller = TaleController();
  @override
  Widget build(BuildContext context) {
    var drawerController=DrawerState.CLOSED;
    return TaleDrawer(
      controller: controller,
      drawer: Container(
        color: Colors.orangeAccent,
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text("Events"),
            ),
            ListTile(
              leading: Icon(Icons.file_copy_outlined),
              title: Text("Certification"),
            ),
            ListTile(
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
      // type: TaleType.Zoom,
      //sideState: SideState.RIGHT,
      body: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Technical Hub")),
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {
            controller.open();
            setState(() {

            });
          },),
        ),
        body: Center(child: Text("Welcome to T-Hub")),
      ),
    );
  }
}
