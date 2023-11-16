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
          color: Colors.deepPurple[500],
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://img.freepik.com/free-photo/purple-flame-black-background_53876-111365.jpg?size=626&ext=jpg&ga=GA1.1.1872723664.1697794858&semt=ais"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              height: h.toDouble(),
              width: w.toDouble(),
              color: Colors.white.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Courier New',
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      controller: _email1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Phone Number , user name or email",
                      ),
                      validator: (val) => val!.isEmpty ? "Enter Email" : null,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      controller: _pass1,
                      decoration: InputDecoration(
                        //icon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(),
                        hintText: "Password",
                      ),
                      validator: (val) =>
                          val!.isEmpty ? "Enter Password" : null,
                      obscureText: true,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgetPass()));
                          },
                          child: Text("Forgot password?",
                              style: TextStyle(
                                  color: Colors.lightBlueAccent.shade700,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5)),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                        width: 500,
                        height: 40,
                        child: TextButton(
                          child: Text(
                            "Log In",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.lightBlueAccent,
                          ),
                          onPressed: () {
                            Future<void> login() async {
                              await FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                      email: "${_email1.text}",
                                      password: "${_pass1.text}")
                                  .then((value) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Screen()));
                              }).onError((error, stackTrace) {
                                print("Wrong password");
                              });
                            }

                            login();
                            _email1.clear();
                            _pass1.clear();
                          },
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                        width: 500,
                        height: 40,
                        child: TextButton(
                          child: Text(
                            "Log In 1",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.lightBlueAccent,
                          ),
                          onPressed: () {
                            Future<void> Anonym() async {
                              await FirebaseAuth.instance
                                  .signInAnonymously()
                                  .then((value) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Screen()));
                              }).onError((error, stackTrace) {});
                            }

                            Anonym();
                          },
                        ),
                      )),

                  Row(
                    children: [
                      SizedBox(width: 160, child: Divider(height: 100)),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Text("OR"),
                      ),
                      SizedBox(
                          width: 180,
                          child: Divider(
                            height: 100,
                          )),
                    ],
                  ), //Divider(height: 180,color: Colors.black,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ForgetPass extends StatefulWidget {
  const ForgetPass({super.key});

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  final _email1 = TextEditingController();
  Future<void> forgetpass() async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: _email1.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2023/09/13/07/29/ghost-8250317_640.png"))),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: TextFormField(
                controller: _email1,
                decoration: InputDecoration(
                  //icon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(),
                  hintText: "Email",
                ),
                validator: (val) => val!.isEmpty ? "Enter Email" : null,
                obscureText: true,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  ForgetPass();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Send"),
                ))
          ],
        ),
      ),
    );
  }
}
