import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:myapplication/Courses/Btech/ACET/Acet_home.dart';
import 'package:myapplication/Courses/Btech/ACOE/Acoe_home.dart';
import 'package:myapplication/Courses/Btech/Btech.dart';
import 'package:myapplication/Home.dart';
import 'package:myapplication/Practice.dart';
import 'package:sizer/sizer.dart';

void main(){
  runApp(MyApp());
 }
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder:(BuildContext context , Orientation orientation , DeviceType deviceType) {

       return MaterialApp(debugShowCheckedModeBanner: false,
          title: "Flutter Demo",
          theme: ThemeData(primarySwatch: Colors.orange),
          home: Screen(),
          // home: Acoe_home(),
        );
      }
    );
  }
}
