import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Courses"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: AlignmentDirectional.topStart,
                  end: Alignment.centerLeft,
                  colors: [Colors.lightGreen, Colors.black45])),
          child: Column(
            children: [
              Text(
                "My practical plan",
                style: TextStyle(fontSize: 70, color: Colors.white),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 50,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.white,
                        child: Center(child: Text("All")),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(child: Text("Mantras")),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(child: Text("Meditation")),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(child: Text("Sleep")),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(child: Text("Ayurvedha")),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(child: Text("Others")),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      height: 300,
                      width: 210,
                      child: Center(
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: Colors.grey[300],
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text("Plan for \nthe Day",
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.black)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, left: 40, bottom: 5, right: 5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(360),
                                          shape: BoxShape.rectangle,
                                          color: Colors.green),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(Icons.favorite_border),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Center(
                                child: Column(children: [
                                  SizedBox(
                                    height: 70,
                                    width: 200,
                                    child: Center(
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        color: Colors.greenAccent,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 5,
                                              bottom: 5,
                                              left: 5,
                                              right: 50),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5,
                                                    bottom: 5,
                                                    left: 5,
                                                    right: 20),
                                                child: Icon(
                                                    Icons.check_box_outlined),
                                              ),
                                              Text(
                                                "Affrimation",
                                                style: TextStyle(fontSize: 15),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 70,
                                    width: 200,
                                    child: Center(
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        color: Colors.grey,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 5,
                                              bottom: 5,
                                              left: 5,
                                              right: 70),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5,
                                                    bottom: 5,
                                                    left: 5,
                                                    right: 20),
                                                child: Icon(Icons
                                                    .check_box_outline_blank),
                                              ),
                                              Text(
                                                "Meditaion",
                                                style: TextStyle(fontSize: 15),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 70,
                                    width: 200,
                                    child: Center(
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        color: Colors.grey,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 5,
                                              bottom: 5,
                                              left: 5,
                                              right: 70),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5,
                                                    bottom: 5,
                                                    left: 5,
                                                    right: 20),
                                                child: Icon(Icons
                                                    .check_box_outline_blank),
                                              ),
                                              Text(
                                                "Manthras",
                                                style: TextStyle(fontSize: 15),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 300,
                          width: 220,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Colors.lightGreen,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 5, left: 20, right: 20),
                                  child: Text(
                                    "Sleep Meditaion",
                                    style: TextStyle(
                                        fontSize: 35, color: Colors.white),
                                  ),
                                ),
                                Text("7 Days Audio Serise",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white)),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.music_note,
                                          size: 30,
                                        ),
                                        Icon(
                                          Icons.multitrack_audio,
                                          size: 30,
                                        ),
                                        Icon(
                                          Icons.music_note,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.library_music_outlined,
                                    size: 50,
                                  ),
                                ))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 80,
                  width: 600,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Affrimation to diose your day",
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: SizedBox(
                                    height: 30,
                                    width: 80,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      color: Colors.white,
                                      child: Center(
                                          child: Text(
                                        "15 min",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 15),
                                      )),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: SizedBox(
                                    height: 30,
                                    width: 120,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      color: Colors.transparent,
                                      child: Center(
                                          child: Text(
                                        "Evening",
                                        style: TextStyle(fontSize: 15),
                                      )),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: SizedBox(
                                    height: 30,
                                    width: 100,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      color: Colors.transparent,
                                      child: Center(
                                          child: Text(
                                        "Relax",
                                        style: TextStyle(fontSize: 15),
                                      )),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              shape: BoxShape.rectangle,
                              color: Colors.green),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.play_arrow),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 80,
                  width: 600,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Affrimation to diose your day",
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 30,
                                  width: 80,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    color: Colors.black,
                                    child: Center(
                                        child: Text(
                                      "10 min",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    )),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 120,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    color: Colors.transparent,
                                    child: Center(
                                        child: Text(
                                      "Sleep",
                                      style: TextStyle(fontSize: 15),
                                    )),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 100,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    color: Colors.transparent,
                                    child: Center(
                                        child: Text(
                                      "Evening",
                                      style: TextStyle(fontSize: 15),
                                    )),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              shape: BoxShape.rectangle,
                              color: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      height: 400,
                      width: 220,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(90),
                                topRight: Radius.circular(90),
                                bottomRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30)),
                            child: Image.network(
                                fit: BoxFit.fill,
                                "https://cdn.pixabay.com/photo/2023/07/23/06/57/leaf-8144517_640.jpg")),
                      ),
                    ),
                    SizedBox(
                      height: 400,
                      width: 220,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(90),
                                topRight: Radius.circular(90),
                                bottomRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30)),
                            child: Image.network(
                                fit: BoxFit.fill,
                                "https://cdn.pixabay.com/photo/2023/07/23/06/57/leaf-8144517_640.jpg")),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Mantras are good for Health",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              SizedBox(
                height: 200,
                width: 800,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Image.network(
                          fit: BoxFit.fill,
                          "https://cdn.pixabay.com/photo/2019/10/15/16/11/spiritualism-4552237_640.jpg")),
                ),
              ),
              Center(
                child: SizedBox(
                  height: 50,
                  width: 120,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.green,
                    child: Center(
                        child: Text(
                      "Click here",
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            label: "settings",
            icon: Icon(Icons.settings, color: Colors.black, size: 30),
          ),
          BottomNavigationBarItem(
              label: "widgets",
              icon:
                  Icon(Icons.widgets_outlined, color: Colors.black, size: 30)),
          BottomNavigationBarItem(
              label: "profile",
              icon:
                  Icon(Icons.person_2_outlined, color: Colors.black, size: 30)),
        ],
      ),
    );
  }
}
