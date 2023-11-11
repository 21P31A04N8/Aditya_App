import 'package:flutter/material.dart';
import 'package:myapplication/Courses/Btech/Btech.dart';

class Technology extends StatefulWidget {
  const Technology({super.key});

  @override
  State<Technology> createState() => _TechnologyState();
}

class _TechnologyState extends State<Technology> {
  var Techpic = [
    "assets/Thub/Technologies/arvrd.png",
    "assets/Thub/Technologies/automation.png",
    "assets/Thub/Technologies/AWS DEVOPS.png",
    "assets/Thub/Technologies/AZURE DEVOPS.png",
    "assets/Thub/Technologies/ccna NETWORKING SECURITY.PNG",
    "assets/Thub/Technologies/celonis RPA.png",
    "assets/Thub/Technologies/cis.png",
    "assets/Thub/Technologies/cyber.png",
    "assets/Thub/Technologies/DATAANALYTICS.png",
    "assets/Thub/Technologies/DIGITALMARKETING.png",
    "assets/Thub/Technologies/fff.png",
    "assets/Thub/Technologies/Full stack.png",
    "assets/Thub/Technologies/GOOGLE DEVOPS.png",
    "assets/Thub/Technologies/IOTD.png",
    "assets/Thub/Technologies/MACHINE.png",
    "assets/Thub/Technologies/peg.png",
    "assets/Thub/Technologies/Red.png",
    "assets/Thub/Technologies/Salesforce.png",
    "assets/Thub/Technologies/SAP ABAP.jpg",
    "assets/Thub/Technologies/SERVICENOW.png",
    "assets/Thub/Technologies/UI UX.jpg",
  ];
  var Technames = [
    "Gaming With AR and VR",
    "Automation",
    "AWS Devops",
    "AZURE Devops",
    "CCNA Networking Security",
    "Celonis RPA",
    "Cisco",
    "Cyber Security",
    "Data Analytics",
    "Digital Marketing",
    "Google Flutter",
    "Full stack Web Development",
    "GOOGLE DEVOPS",
    "IOT",
    "MACHINE Learning",
    "Pega",
    "Red Hat",
    "Salesforce",
    "SAP BAP",
    "Service Now",
    "UI/UX",
  ];
  @override
  Widget build(BuildContext context) {
    int h = MediaQuery.of(context).size.height.toInt();
    int w = MediaQuery.of(context).size.width.toInt();
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.blue,
            title: Center(child: Text("Technologies"))),
        body: ListView.builder(
            itemCount: Techpic.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      individual_tech(context, Techpic[0]);
                    },
                    child: Container(
                      child: Row(
                        children: [
                          (index % 2 == 0)
                              ? Padding(
                                  padding: const EdgeInsets.only(left: 45),
                                  child: Container(
                                    width: 350,
                                    decoration: BoxDecoration(
                                        color: Colors.blue[100],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Container(
                                            width: 100,
                                            child: Column(
                                              children: [
                                                Text(
                                                  Technames[index],
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          elevation: 30,
                                          shadowColor: Colors.black,
                                          child: Container(
                                            height: 200,
                                            width: 200,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        Techpic[index]))),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  width: 350,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        elevation: 30,
                                        shadowColor: Colors.black,
                                        child: Container(
                                          height: 200,
                                          width: 200,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      Techpic[index]))),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20),
                                        child: Container(
                                          width: 100,
                                          child: Column(
                                            children: [
                                              Text(
                                                Technames[index],
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                        ],
                      ),
                    ),
                  ));
            }));
  }
}

void individual_tech(context, String imgpath) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      context: context,
      builder: (context) => Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                image: DecorationImage(image: AssetImage(imgpath))),
          ));
}
