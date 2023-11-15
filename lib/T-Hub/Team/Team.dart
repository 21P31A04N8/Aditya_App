import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:myapplication/T-Hub/Team/Team_member.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class Team extends StatefulWidget {
  const Team({super.key});

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> {
  final List<String> Teampics = [
    "assets/Thub/Team/ARAVIND.png",
    "assets/Thub/Team/ARJUN.png",
    "assets/Thub/Team/ASHOK-M.png",
    "assets/Thub/Team/BABJI.png",
    "assets/Thub/Team/BOBBY.png",

    "assets/Thub/Team/BOBBY-KIRAN.png",
    "assets/Thub/Team/DIRGA PRASAD.webp",
    "assets/Thub/Team/DIVYA.png",
    "assets/Thub/Team/GANAPATHI.png",
    "assets/Thub/Team/GIRISH.png",

    "assets/Thub/Team/HANUMANTH.webp",
    "assets/Thub/Team/JDP.png",
    "assets/Thub/Team/KIJSHORE.webp",
    "assets/Thub/Team/KIRAN.png",
    "assets/Thub/Team/KIRAN-KUMAR.png",

    "assets/Thub/Team/krishna.webp",
    "assets/Thub/Team/LOVA-RAJU.png",
    "assets/Thub/Team/M-RAJESH.png",
    "assets/Thub/Team/MUTYALA-BABU.png",
    "assets/Thub/Team/NANI.webp",

    "assets/Thub/Team/NDP.png",
    "assets/Thub/Team/PAVAN.png",
    "assets/Thub/Team/PAVAN-TEJA.png",
    "assets/Thub/Team/PETER.png",
    "assets/Thub/Team/PRAKASH.png",

    "assets/Thub/Team/PRASANTH.png",
    "assets/Thub/Team/RAJA-CHOWDARI.png",
    "assets/Thub/Team/RAJESH-B.png",
    "assets/Thub/Team/RAMBABU.png",
    "assets/Thub/Team/RENUKA.png",

    "assets/Thub/Team/SAI-KIRAN.png",
    "assets/Thub/Team/SAI-KUMAR.png",
    "assets/Thub/Team/SAI-TEJA.png",
    "assets/Thub/Team/SAMULE.png",
    "assets/Thub/Team/SATHISH.png",

    "assets/Thub/Team/SATISH.png",
    "assets/Thub/Team/SDP.png",
    "assets/Thub/Team/SHAIFU.png",
    "assets/Thub/Team/SIDIK.png",
    "assets/Thub/Team/SIMHADRI.png",

    "assets/Thub/Team/SIVA.png",
    "assets/Thub/Team/SRINU.png",
    "assets/Thub/Team/SUNEEL.png",
    "assets/Thub/Team/VARDINI.png",
    "assets/Thub/Team/VASANTH.webp",

    "assets/Thub/Team/VEERABABU.png",

  ];
  final List<String> title1 = [
    "AWS Trainer",
    "Graphc Desgineer",
    "Lead Trainer Competitive Coding",
    "CEO",
    "Dev Ops Trainer",

    "IOT Trainer",
    "Web Developer",
    "Full Stack Developer",
    "Technical Trainer",
    "Web Developer",

    "Coding Trainer",
    "Web Developers",
    "Coding Trainer",
    "Salseforce Trainer",
    "Program Manager Realtionship",

    "Google Flutter Trainer",
    "Support Executive",
    "Technical Trainer",
    "Pega Trainer",
    "Python Trainer",

    "Full Stack Developer",
    "Coding Trainer",
    "Dev Ops Trainer",
    "Security Analyst",
    "IOT Trainer",

    "AR/VR Developer",
    "Pega Trainer",
    "Program Manager Placements",
    "Cloud Trainer",
    "Softskills Trainer",

    "3D Graphics Designer",
    "Support Executive",
    "Automation trainer",
    "Network Administrator",
    "Web developer",

    "Pega Trainer",
    "Motion Graphic Desginer",
    "Program Manager Training",
    "Apptitude trainer",
    "Full Stack Developer",

    "Support Executive",
    "SaleForce Trainer",
    "Full Stack Developer",
    "Data Analytics Trainer",
    "Flutter trainer ",

    "Program Manager Operation",

  ];
  final Teamname = [
    "ARAVIND",
    "ARJUN",
    "ASHOK",
    "BABJI",
    "BOBBY",

    "BOBBY-KIRAN",
    "DURGA PRASAD",
    "DIVYA",
    "GANAPATHI",
    "GIRISH",

    "HANUMANTH",
    "J.Durga Prasad",
    "KISHORE",
    "KIRAN-KUMAR",
    "KIRAN",

    "krishna",
    "LOVA-RAJU",
    "RAJESH",
    "MUTYALA-BABU",
    "NANI",

    "NDP",
    "PAVAN-TEJA",
    "PAVAN",
    "PETER",
    "PRAKASH",

    "PRASANTH",
    "RAJA-CHOWDARI",
    "RAJESH",
    "RAMBABU",
    "RENUKA",

    "SAI-KIRAN",
    "SAI-KUMAR",
    "SAI-TEJA",
    "SAMULE",
    "SATHISH",

    "SATISH",
    "SDP",
    "SHAIFU",
    "SIDIK",
    "SIMHADRI",

    "SIVA",
    "SRINU",
    "SUNEEL",
    "VARDINI",
    "VASANTH",

    "VEERABABU",


  ];
  var title=["","","","","","","","","","",
    "","","","","","","","","","",
    "","","","","","","","","","",
    "","","","","","","","","","",
    "","","","","","",];
  Widget MyTile(int i) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(Teampics[i]))));
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> images = Teampics.map((image) {
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
            DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      );
    }).toList();
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              ZoomDrawer.of(context)!.toggle();
            },
          ),
          title: Center(child: Text("Team"))),
      backgroundColor: Colors.white,
      body: VerticalCardPager(
        onSelectedItem: (index) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Team_Mem(
                    imagepath: Teampics[index],
                    teamname: Teamname[index],
                    title1: title1[index],
                  )));
        },
        titles: title,
        images: images,
      ),
    );
  }
}
