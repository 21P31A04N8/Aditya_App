import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:lottie/lottie.dart';
import 'package:myapplication/Courses/BBA/AGBS.dart';
import 'package:myapplication/Courses/Btech/ACOE/Acoe_home.dart';
import 'package:myapplication/Courses/Btech/AEC/Aec_home.dart';
import 'package:myapplication/Courses/Btech/Btech.dart';
import 'package:myapplication/Courses/Diploma/Diploma_home.dart';
import 'package:myapplication/Courses/Pharmacy/ACOP/Acop_home.dart';
import 'package:myapplication/Courses/Pharmacy/APCS/Apcs_home.dart';
import 'package:myapplication/T-Hub/Certifications.dart';
import 'package:myapplication/T-Hub/Codemind/Codemind.dart';
import 'package:myapplication/T-Hub/Drive_Ready/Technologies.dart';
import 'package:myapplication/T-Hub/Home_page/Project_Space.dart';
import 'package:myapplication/T-Hub/Home_page/T_Connect.dart';
import 'package:myapplication/T-Hub/Home_page/Thub_Home.dart';
import 'package:myapplication/T-Hub/Home_page/owl_coder.dart';
import 'package:myapplication/T-Hub/Team/Team.dart';
import 'package:myapplication/T-Hub/Thub_Events.dart';
import 'package:myapplication/T-Hub/Thub_info.dart';
import 'package:myapplication/contact_us.dart';
import 'package:sizer/sizer.dart';
import 'package:transparent_image/transparent_image.dart';

import 'Courses/Btech/ACET/Acet_home.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/rendering.dart';

final zoomDrawerController = ZoomDrawerController();

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  Widget page = MainScreen();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: zoomDrawerController,
      menuScreen: Builder(builder: (context) {
        return MenuScreen(
          onpagechange: (a) {
            setState(() {
              page = a;
            });
            ZoomDrawer.of(context)!.close();
          },
        );
      }),
      mainScreen: page,
      borderRadius: 24.0,
      closeCurve: Curves.decelerate,
      showShadow: true,
      drawerShadowsBackgroundColor: Colors.grey,
      menuBackgroundColor: Colors.deepPurple.shade300,
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "ADITYA",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 2),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => ZoomDrawer.of(context)!.toggle(),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              CarouselSlider(
                items: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade300,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FadeInImage.memoryNetwork(
                          placeholder: kTransparentImage,
                          image:
                              "https://ik.imagekit.io/lhb4hvprkpz/3_1jjXabAtm.jpg?updatedAt=1627468901511",
                          fit: BoxFit.fill,
                        ),
                      )),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade300,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FadeInImage.memoryNetwork(
                          placeholder: kTransparentImage,
                          image:
                              "https://ik.imagekit.io/lhb4hvprkpz/wifi_2tU1IcdcN.jpg?updatedAt=1627469037857",
                          fit: BoxFit.fill,
                        ),
                      )),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade300,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FadeInImage.memoryNetwork(
                          placeholder: kTransparentImage,
                          image:
                              "https://ik.imagekit.io/lhb4hvprkpz/zym_ZoidnRVOV.jpg?updatedAt=1627469080425",
                          fit: BoxFit.fill,
                        ),
                      )),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade300,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FadeInImage.memoryNetwork(
                          placeholder: kTransparentImage,
                          image: "https://aditya.ac.in/assets/img/race.jpg",
                          fit: BoxFit.fill,
                        ),
                      )),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade300,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FadeInImage.memoryNetwork(
                          placeholder: kTransparentImage,
                          image:
                              "https://ik.imagekit.io/lhb4hvprkpz/2_9gpdW7NrJ.jpg?updatedAt=1627468900702",
                          fit: BoxFit.fill,
                        ),
                      )),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                  aspectRatio: 2.0,
                  initialPage: 2,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                height: 28.h,
                width: 90.w,
                child: Text(
                  "Aditya Educational Institutions started the journey in 1984 as a small sapling to provide quality education to the students in the district of East Godavari by visionary and prominent educationist Shri N. Sesha Reddy and being spread under young and dynamic leadership of Shri N. Satish Reddy. In this journey, Aditya has now attained an outcome of number of branches with strong roots in the field of education with 50+ Educational Institutions, 5000+ faculty and 50000+ students. Growing concern about the technical front, Aditya has established a group of Engineering Colleges, Polytechnic Colleges, Pharmacy Colleges at Surampalem to enrich quality technical education in the district level as well as at global level.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5.w),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        elevation: 30,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 25.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/aditya/chairman.jpg'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                        )),
                  ),
                  Container(
                    height: 20.h,
                    width: 50.w,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 5.w, top: 10.w),
                          child: Text(
                            'N.Sesha Reddy',
                            style: TextStyle(
                              fontSize: 20.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.w, left: 10.w),
                          child: Text(
                            '(Chairman)',
                            style: TextStyle(
                              fontSize: 20.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                height: 15.h,
                width: 90.w,
                child: Text(
                  "Sri Nallamilli Sesha Reddy as a founder cum chairman, promoted an educational society in the name and style of Aditya Academy at Kakinada in the year 1984, with a vision and mission to create a platform for holistic growth and success to students at all levels (i.e. from KG to PG).",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 20.h,
                    width: 50.w,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 5.w, top: 10.w),
                          child: Text(
                            'N.Satish Reddy',
                            style: TextStyle(
                              fontSize: 17.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.w, left: 10.w),
                          child: Text(
                            '(Vice Chairman)',
                            style: TextStyle(
                              fontSize: 17.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      elevation: 30,
                      shadowColor: Colors.black,
                      child: Container(
                        height: 25.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/aditya/vc.jpeg'),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                      )),
                ],
              ),
              SizedBox(height: 4.h),
              Container(
                height: 15.h,
                width: 90.w,
                child: Text(
                  "Sri Satish Reddy as a  cum vice chairman,  is typically responsible for assisting the Chairman in overseeing the institution's strategic direction and decision-making. This role often involves participating in board meetings, contributing to policy development, and representing the institute in various capacities.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 40.w),
                child: Container(
                    height: 5.h,
                    width: 50.w,
                    child: Text(
                      'Btech Colleges',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                          color: Colors.black),
                    )),
              ),
              LocationListItem(
                  imageUrl: "assets/aditya/aec.png",
                  name: "Aditya Engineering College",
                  country: "ACET"),
              LocationListItem(
                  imageUrl: "assets/aditya/2nd.png",
                  name: "Aditya College of Engineering & Technology",
                  country: "ACET"),
              LocationListItem(
                  imageUrl: "assets/aditya/3rd.png",
                  name: "Aditya College of Engineering",
                  country: "ACES"),
              Padding(
                padding: EdgeInsets.only(right: 0.w),
                child: Container(
                    height: 5.h,
                    width: 90.w,
                    child: Text(
                      'Pharmacy Colleges',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                          color: Colors.black),
                    )),
              ),
              LocationListItem(
                  imageUrl: "assets/aditya/apc.png",
                  name: "Aditya Pharmacy college",
                  country: "ACET"),
              LocationListItem(
                  imageUrl: "assets/aditya/acp.png",
                  name: "Aditya College of Pharmacy",
                  country: "ACES"),
              Padding(
                padding: EdgeInsets.only(right: 0.w),
                child: Container(
                    height: 5.h,
                    width: 90.w,
                    child: Text(
                      'Polytechnic Colleges',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                          color: Colors.black),
                    )),
              ),
              LocationListItem(
                  imageUrl: "assets/aditya/poly.png",
                  name: "Aditya Polytechnic college",
                  country: "ACET"),
              Padding(
                padding: EdgeInsets.only(right: 0.w),
                child: Container(
                    height: 5.h,
                    width: 90.w,
                    child: Text(
                      'BBA College',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                          color: Colors.black),
                    )),
              ),
              LocationListItem(
                  imageUrl: "assets/aditya/agbs.png",
                  name: "Aditya Business School",
                  country: "ACES"),
            ],
          ),
        ));
  }
}

class MenuScreen extends StatefulWidget {
  MenuScreen({super.key, required this.onpagechange});
  final Function(Widget) onpagechange;

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  ExpansionTileController _expansionTileController = ExpansionTileController();
  // List<listItems> draweritems=[
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[300],
        body: Theme(
          data: ThemeData.dark(),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children:
              // draweritems.map((e) => ListTile(
              //   title: e.title,
              //   leading: e.icon,
              //   onTap: (){
              //     onpagechange(e.page);
              //   },
              // )).toList()
              [
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                widget.onpagechange(MainScreen());
              },
            ),
            ExpansionTile(
              controller: _expansionTileController,
              title: Text('Courses'),
              childrenPadding: EdgeInsets.symmetric(vertical: 8),
              children: [
                ListTile(
                  title: Text(
                    '                Btech',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onTap: () {},
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Aec_home()));
                                },
                                child: Container(
                                    width: double.infinity,
                                    child: Text(
                                      'AEC',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                            PopupMenuItem(
                              child: Text(
                                'ACET',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Acet_home()));
                                setState(() {
                                  _expansionTileController.collapse();
                                  zoomDrawerController.close;
                                });
                              },
                            ),
                            PopupMenuItem(
                                child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Acoe_home()));
                                setState(() {
                                  _expansionTileController.collapse();
                                });
                              },
                              child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    'ACOE',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ))
                          ];
                        },
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    '              Pharmacy',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onTap: () {},
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PopupMenuButton(
                        color: Colors.white,
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                                child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Apcs_home()));
                              },
                              child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    'APCS',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )),
                            )),
                            PopupMenuItem(
                                child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Acop_home()));
                              },
                              child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    'ACPS',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )),
                            )),
                          ];
                        },
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Courses()));
                  },
                  child: SizedBox(
                    height: 30,
                    width: 160,
                    child: Card(
                      color: Colors.white,
                      child: Center(
                          child: Text(
                        "Diploma",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AGBS()));
                  },
                  child: SizedBox(
                    height: 30,
                    width: 160,
                    child: Card(
                      color: Colors.white,
                      child: Center(
                          child: Text(
                        "BBA",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 160,
                  child: Card(
                    color: Colors.white,
                    child: Center(
                        child: Text(
                      "MBA",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Events"),
              children: [
                SizedBox(
                  height: 30,
                  width: 160,
                  child: Card(
                    color: Colors.white,
                    child: Center(
                        child: Text(
                      "VEDA",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 160,
                  child: Card(
                    color: Colors.white,
                    child: Center(
                        child: Text(
                      "COLORS",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 160,
                  child: Card(
                    color: Colors.white,
                    child: Center(
                        child: Text(
                      "Acheivers day",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text('Thub'),
              leading: Icon(Icons.style_outlined),
              onTap: () {
                widget.onpagechange(Thub_Home());
              },
            ),
            ListTile(
              title: Text('Contact Us'),
              leading: Icon(Icons.phone),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Contact_us()));
              },
            )
          ]),
        ));
  }
}

class Thub extends StatefulWidget {
  const Thub({super.key});

  @override
  State<Thub> createState() => _ThubState();
}

class _ThubState extends State<Thub> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(
          seconds: 1), // Adjust the duration to decrease or increase the speed
      vsync: this,
    );

    _animation = Tween<double>(begin: -1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut, // You can experiment with different curves
      ),
    );

    _controller.forward();
  }

  var img = [];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text("TECHNICAL HUB"),
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => ZoomDrawer.of(context)!.toggle()),
      ),
      body: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Transform(
            transform: Matrix4.translationValues(
                _animation.value * MediaQuery.of(context).size.width, 0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.all(2.h),
                      child: Container(
                        height: 20.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade400,
                        ),
                      )),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  Stack(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 40.w, top: 5.sp),
                        width: 70.w,
                        height: 8.h,
                        margin: EdgeInsets.only(right: 1.h),
                        decoration: BoxDecoration(
                            color: Colors.lightBlue.shade300,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30)),
                            border: Border.all(
                              color: Colors.blue.shade900,
                              width: 2,
                            )),
                        child: Text('OWL CODER',
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.bold)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => owl_coder()));
                        },
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            elevation: 30,
                            shadowColor: Colors.black,
                            child: Container(
                              height: 30.w,
                              width: 30.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/Thub/THub_home/Owl-Coder.png'),
                                    fit: BoxFit.fill),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  Stack(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 40.w, left: 10.sp),
                        width: 70.w,
                        height: 8.h,
                        margin: EdgeInsets.only(right: 1.h),
                        decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            border: Border.all(
                              color: Colors.green.shade700,
                              width: 2,
                            )),
                        child: Center(
                            child: Text('T CONNECT',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold))),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => T_Connect()));
                        },
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            elevation: 30,
                            shadowColor: Colors.black,
                            child: Container(
                              height: 30.w,
                              width: 30.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/Thub/THub_home/tconnect.png'),
                                    fit: BoxFit.fill),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  Stack(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 40.w, top: 5.sp),
                        width: 70.w,
                        height: 8.h,
                        margin: EdgeInsets.only(right: 1.h),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30)),
                            border: Border.all(
                              color: Colors.grey.shade700,
                              width: 2,
                            )),
                        child: Text('DRIVE READY',
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.bold)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Technology()));
                        },
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            elevation: 30,
                            shadowColor: Colors.black,
                            child: Container(
                              height: 30.w,
                              width: 30.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/Thub/THub_home/Drive-Ready.png'),
                                    fit: BoxFit.fill),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  Stack(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 40.w, left: 10.sp),
                        width: 70.w,
                        height: 8.h,
                        margin: EdgeInsets.only(right: 1.h),
                        decoration: BoxDecoration(
                            color: Colors.amber.shade300,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            border: Border.all(
                              color: Colors.orange.shade700,
                              width: 2,
                            )),
                        child: Center(
                            child: Text('PROJECT SPACE',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold))),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Project_Space()));
                        },
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            elevation: 30,
                            shadowColor: Colors.black,
                            child: Container(
                              height: 30.w,
                              width: 30.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/Thub/THub_home/projectspace.png'),
                                    fit: BoxFit.fill),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  Stack(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 40.w, top: 5.sp),
                        width: 70.w,
                        height: 8.h,
                        margin: EdgeInsets.only(right: 1.h),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 232, 147, 176),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30)),
                            border: Border.all(
                              color: Colors.pink.shade700,
                              width: 2,
                            )),
                        child: Center(
                            child: Text('CODEMIND',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold))),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => codemind()));
                        },
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            elevation: 30,
                            shadowColor: Colors.black,
                            child: Container(
                              height: 30.w,
                              width: 30.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/Thub/THub_home/codemind.png'),
                                    fit: BoxFit.fill),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  Stack(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 40.w, left: 10.sp),
                        width: 70.w,
                        height: 8.h,
                        margin: EdgeInsets.only(right: 1.h),
                        decoration: BoxDecoration(

                            // color: Colors.white.shade300,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            )),
                        child: Center(
                            child: Text('PLACEMENTS',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold))),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => owl_coder()));
                        },
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            elevation: 30,
                            shadowColor: Colors.black,
                            child: Container(
                              height: 30.w,
                              width: 30.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/Thub/THub_home/placements.jpg'),
                                    fit: BoxFit.fill),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Divider(
                      indent: 3.w,
                      endIndent: 3.w,
                      thickness: 2,
                      color: Colors.black45),
                  SizedBox(height: 2.h),
                  Padding(
                    padding: EdgeInsets.all(2.h),
                    child: CarouselSlider(
                      items: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 25.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/Thub/THub_home/Cybersec.png'),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        Container(
                          height: 25.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/Thub/THub_home/owl coder 1.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        Container(
                          height: 25.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/Thub/THub_home/pega.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        Container(
                          height: 25.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/Thub/THub_home/owlcoder3.1.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        Container(
                          height: 25.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/Thub/THub_home/skdayselfie.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        height: 35.h,
                        scrollDirection: Axis.vertical,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 0.8,
                        aspectRatio: 2.0,
                        initialPage: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class listItems {
  final Icon icon;
  final Text title;
  final Widget page;
  listItems(this.icon, this.title, this.page);
}

//home screen animation

class LocationListItem extends StatelessWidget {
  LocationListItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.country,
  });

  final String imageUrl;
  final String name;
  final String country;
  final GlobalKey _backgroundImageKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              _buildParallaxBackground(context),
              _buildGradient(),
              _buildTitleAndSubtitle(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildParallaxBackground(BuildContext context) {
    return Flow(
      delegate: ParallaxFlowDelegate(
        scrollable: Scrollable.of(context),
        listItemContext: context,
        backgroundImageKey: _backgroundImageKey,
      ),
      children: [
        Image.asset(
          imageUrl,
          key: _backgroundImageKey,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.6, 0.95],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndSubtitle() {
    return Positioned(
      left: 20,
      bottom: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            country,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 23,
            ),
          ),
        ],
      ),
    );
  }
}

class ParallaxFlowDelegate extends FlowDelegate {
  ParallaxFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
    required this.backgroundImageKey,
  }) : super(repaint: scrollable.position);

  final ScrollableState scrollable;
  final BuildContext listItemContext;
  final GlobalKey backgroundImageKey;

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(
      width: constraints.maxWidth,
    );
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    // Calculate the position of this list item within the viewport.
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final listItemBox = listItemContext.findRenderObject() as RenderBox;
    final listItemOffset = listItemBox.localToGlobal(
        listItemBox.size.centerLeft(Offset.zero),
        ancestor: scrollableBox);

    // Determine the percent position of this list item within the
    // scrollable area.
    final viewportDimension = scrollable.position.viewportDimension;
    final scrollFraction =
        (listItemOffset.dy / viewportDimension).clamp(0.0, 1.0);

    // Calculate the vertical alignment of the background
    // based on the scroll percent.
    final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);

    // Convert the background alignment into a pixel offset for
    // painting purposes.
    final backgroundSize =
        (backgroundImageKey.currentContext!.findRenderObject() as RenderBox)
            .size;
    final listItemSize = context.size;
    final childRect =
        verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);

    // Paint the background.
    context.paintChild(
      0,
      transform:
          Transform.translate(offset: Offset(0.0, childRect.top)).transform,
    );
  }

  @override
  bool shouldRepaint(ParallaxFlowDelegate oldDelegate) {
    return scrollable != oldDelegate.scrollable ||
        listItemContext != oldDelegate.listItemContext ||
        backgroundImageKey != oldDelegate.backgroundImageKey;
  }
}

class Parallax extends SingleChildRenderObjectWidget {
  const Parallax({
    super.key,
    required Widget background,
  }) : super(child: background);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderParallax(scrollable: Scrollable.of(context));
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderParallax renderObject) {
    renderObject.scrollable = Scrollable.of(context);
  }
}

class ParallaxParentData extends ContainerBoxParentData<RenderBox> {}

class RenderParallax extends RenderBox
    with RenderObjectWithChildMixin<RenderBox>, RenderProxyBoxMixin {
  RenderParallax({
    required ScrollableState scrollable,
  }) : _scrollable = scrollable;

  ScrollableState _scrollable;

  ScrollableState get scrollable => _scrollable;

  set scrollable(ScrollableState value) {
    if (value != _scrollable) {
      if (attached) {
        _scrollable.position.removeListener(markNeedsLayout);
      }
      _scrollable = value;
      if (attached) {
        _scrollable.position.addListener(markNeedsLayout);
      }
    }
  }

  @override
  void attach(covariant PipelineOwner owner) {
    super.attach(owner);
    _scrollable.position.addListener(markNeedsLayout);
  }

  @override
  void detach() {
    _scrollable.position.removeListener(markNeedsLayout);
    super.detach();
  }

  @override
  void setupParentData(covariant RenderObject child) {
    if (child.parentData is! ParallaxParentData) {
      child.parentData = ParallaxParentData();
    }
  }

  @override
  void performLayout() {
    size = constraints.biggest;

    // Force the background to take up all available width
    // and then scale its height based on the image's aspect ratio.
    final background = child!;
    final backgroundImageConstraints =
        BoxConstraints.tightFor(width: size.width);
    background.layout(backgroundImageConstraints, parentUsesSize: true);

    // Set the background's local offset, which is zero.
    (background.parentData as ParallaxParentData).offset = Offset.zero;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    // Get the size of the scrollable area.
    final viewportDimension = scrollable.position.viewportDimension;

    // Calculate the global position of this list item.
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final backgroundOffset =
        localToGlobal(size.centerLeft(Offset.zero), ancestor: scrollableBox);

    // Determine the percent position of this list item within the
    // scrollable area.
    final scrollFraction =
        (backgroundOffset.dy / viewportDimension).clamp(0.0, 1.0);

    // Calculate the vertical alignment of the background
    // based on the scroll percent.
    final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);

    // Convert the background alignment into a pixel offset for
    // painting purposes.
    final background = child!;
    final backgroundSize = background.size;
    final listItemSize = size;
    final childRect =
        verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);

    // Paint the background.
    context.paintChild(
        background,
        (background.parentData as ParallaxParentData).offset +
            offset +
            Offset(0.0, childRect.top));
  }
}

class Location {
  const Location({
    required this.name,
    required this.place,
    required this.imageUrl,
  });

  final String name;
  final String place;
  final String imageUrl;
}
