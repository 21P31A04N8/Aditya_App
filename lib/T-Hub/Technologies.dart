import 'package:flutter/material.dart';

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
    "AWS DEVOPS",
    "AZURE DEVOPS",
    "ccna NETWORKI",
    "celonis RPA",
    "Cisco",
    "Cyber Security",
    "DATAANALYTICS",
    "DIGITALMARKETING",
    "Google Flutter",
    "Full stack Web Development",
    "GOOGLE DEVOPS",
    "IOT",
    "MACHINE Learning",
    "pega",
    "Red Hat",
    "Salesforce",
    "SAP ABAP",
    "SERVICENOW",
    "UI/UX",
  ];
  @override
  Widget build(BuildContext context) {
    int h = MediaQuery.of(context).size.height.toInt();
    int w = MediaQuery.of(context).size.width.toInt();
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Technologies"))),
        body: ListView.builder(
            itemCount: Techpic.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Colors.blue[100],
                  title: Text(Technames[index]),
                  leading: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      width: 50,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(image: AssetImage(Techpic[index])))),
                ),
              );
            }));
  }
}
