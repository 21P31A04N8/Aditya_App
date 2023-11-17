import 'package:flutter/material.dart';

class T_Connect extends StatefulWidget {
  const T_Connect({super.key});

  @override
  State<T_Connect> createState() => _T_ConnectState();
}

class _T_ConnectState extends State<T_Connect> {
  var t_con_tech = [
    "assets/Thub/T-Connect/3D Modeling.png",
    "assets/Thub/T-Connect/AIML.png",
    "assets/Thub/T-Connect/AR VR.png",
    "assets/Thub/T-Connect/cis.png",
    "assets/Thub/T-Connect/codemind.png",
    "assets/Thub/T-Connect/Coding.png",
    "assets/Thub/T-Connect/cyber.png",
    "assets/Thub/T-Connect/devo.png",
    "assets/Thub/T-Connect/Digital marketing.png",
    "assets/Thub/T-Connect/Drone.png",
    "assets/Thub/T-Connect/Flutter.png",
    "assets/Thub/T-Connect/Full stack.png",
    "assets/Thub/T-Connect/IOT.png",
    "assets/Thub/T-Connect/oracle.png",
    "assets/Thub/T-Connect/PG.jpg",
    "assets/Thub/T-Connect/Placements.png",
    "assets/Thub/T-Connect/Red.png",
    "assets/Thub/T-Connect/RPA.jpg",
    "assets/Thub/T-Connect/SF2.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("T-Connect"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image(
                            image:
                                AssetImage("assets/Thub/THub_home/TCON.png")))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(18),
                    child: Text(
                      "T-Connect is a technical hub dedicated to providing students with up-to-date knowledge and skills in the field of new technologies. Its main goal is to bridge the gap between the rapidly evolving technological landscape and the knowledge base of students. Showing a brief note about those technologies by stalls. Some of the growing technologies are presnted below.",
                      textAlign: TextAlign.justify,
                      
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        height: 1.3
                      ),
                    ),
                  ),
                ),
              ),
              GridView.builder(
                padding: EdgeInsets.all(12),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 18,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8),
                itemBuilder: ((context, index) => Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(t_con_tech[index]))),
                    )),
              ),
            ],
          ),
        ));
  }
}
