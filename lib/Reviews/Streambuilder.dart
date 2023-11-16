import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapplication/Home.dart';
import 'package:myapplication/Reviews/Login.dart';

class My_Home_Page extends StatefulWidget {
  const My_Home_Page({super.key});

  @override
  State<My_Home_Page> createState() => _My_Home_PageState();
}

class _My_Home_PageState extends State<My_Home_Page> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Screen();
        } else {
          return Login_page();
        }
      },
    );
  }
}
