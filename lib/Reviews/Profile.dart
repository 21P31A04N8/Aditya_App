import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class About_Me extends StatelessWidget {
  const About_Me({super.key});

  @override
  Widget build(BuildContext context) {
    int h = MediaQuery.of(context).size.height.toInt();
    int w = MediaQuery.of(context).size.width.toInt();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Center(child: Text("About Me")),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Text(
            "PROFILE",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(360)),
                    child: Icon(
                      Icons.person,
                      fill: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: h / 2,
              width: (w - 10) / 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Name  : ${FirebaseAuth.instance.currentUser!.email.toString().substring(0, FirebaseAuth.instance.currentUser!.email!.length - 10)}",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Email : ${FirebaseAuth.instance.currentUser!.email}",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
