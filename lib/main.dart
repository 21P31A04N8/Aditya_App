import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapplication/Home.dart';
import 'package:myapplication/Reviews/Streambuilder.dart';

import 'package:myapplication/T-Hub/Home_page/T_Connect.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Demo",
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        //home: T_Connect(),
        home: My_Home_Page(),
        // home: Acoe_home(),
      );
    });
  }
}
