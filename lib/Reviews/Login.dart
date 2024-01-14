import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapplication/Home.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    final _email1 = TextEditingController();
    final _pass1 = TextEditingController();
    int h = MediaQuery.of(context).size.height.toInt();
    int w = MediaQuery.of(context).size.width.toInt();
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomCenter,
              colors: [
            Colors.deepPurple.shade200,
            Colors.deepPurple.shade400,
            Colors.deepPurple.shade200,
            Colors.blue.shade400
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              height: h.toDouble(),
              width: w.toDouble(),
              //color: Colors.white.withOpacity(0.2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(150),
                              topLeft: Radius.circular(150),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      child: Image.asset(
                          "assets/aditya/Aditya_logo-removebg-preview.png")),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Welcome,",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Courier New',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Aditya Educational Institutions",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      controller: _email1,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: const BorderSide(
                              color: Colors.deepPurple, width: 1.0),
                        ),
                        hintStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.deepPurple.shade200,
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1.0),
                        ),
                        hintText: "Email Id",
                      ),
                      validator: (val) => val!.isEmpty ? "Enter Email" : null,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      controller: _pass1,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: const BorderSide(
                              color: Colors.deepPurple, width: 1.0),
                        ),
                        hintStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.deepPurple.shade200,
                        //icon: Icon(Icons.remove_red_eye),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        hintText: "Password",
                      ),
                      validator: (val) =>
                          val!.isEmpty ? "Enter Password" : null,
                      obscureText: true,
                    ),
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: SizedBox(
                        width: 450,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: TextButton(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "Log In",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                Future<void> login() async {
                                  showDialog(
                                      context: context,
                                      builder: (context) => Center(
                                            child: CircularProgressIndicator(),
                                          ));
                                  try {
                                    await FirebaseAuth.instance
                                        .signInWithEmailAndPassword(
                                            email: "${_email1.text}",
                                            password: "${_pass1.text}");
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => Screen()));
                                    if (context.mounted) Navigator.pop(context);
                                  } on FirebaseException catch (e) {
                                    Navigator.pop(context);
                                    print(e.code);
                                  }
                                }

                                login();
                              },
                            ),
                          ),
                        ),
                      )),
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          width: 160,
                          child: Divider(
                              indent: 5,
                              color: Colors.black45,
                              thickness: 2,
                              height: 100)),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Text("OR"),
                      ),
                      SizedBox(
                          width: 160,
                          child: Divider(
                            color: Colors.black45,
                            thickness: 2,
                            height: 100,
                            endIndent: 5,
                          )),
                    ],
                  ), //Divider(height: 180,color: Colors.black,),
                  Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: SizedBox(
                        width: 500,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: TextButton(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "Login as a Guest",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {
                              Future<void> Anonym() async {
                                showDialog(
                                    context: context,
                                    builder: (context) => Center(
                                          child: CircularProgressIndicator(),
                                        ));
                                try {
                                  await FirebaseAuth.instance
                                      .signInAnonymously();
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => Screen()));
                                  if (context.mounted) Navigator.pop(context);
                                } on FirebaseException catch (e) {
                                  Navigator.pop(context);
                                  print(e.code);
                                }
                              }

                              Anonym();
                            },
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
