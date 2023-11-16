import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:myapplication/Reviews/Login.dart';
import 'package:myapplication/Reviews/Reviewpage.dart';

class Mytodo extends StatefulWidget {
  const Mytodo({super.key});

  @override
  State<Mytodo> createState() => _MytodoState();
}

class _MytodoState extends State<Mytodo> {
  final currentuser = FirebaseAuth.instance.currentUser!;
  final textController = TextEditingController();
  void postReview() {
    if (textController.text.isNotEmpty) {
      FirebaseFirestore.instance.collection("User posts").add({
        "UserEmail": currentuser.email.toString(),
        "Messege": textController.text.toString(),
        "T": Timestamp.now()
      });
    }
    setState(() {
      textController.clear();
    });
  }

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
          actions: [
            IconButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                icon: Icon(Icons.logout))
          ],
          title: Center(child: Text("Reviews"))),
      body: Column(
        children: [
          Expanded(
              child: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("User posts")
                .orderBy("T", descending: false)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      final post = snapshot.data!.docs;
                      return PostReview(
                          messege: post[index]["Messege"],
                          user: post[index]["UserEmail"]);
                    });
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error :${snapshot.error}"),
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          )),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: textController,
                    decoration: InputDecoration(
                      //icon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(),
                      hintText: "Review",
                    ),
                    maxLines: 5,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      if (currentuser.isAnonymous) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login_page()));
                      } else {
                        postReview;
                      }
                    },
                    icon: Icon(Icons.arrow_circle_up))
              ],
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
