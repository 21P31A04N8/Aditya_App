import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
import 'package:sizer/sizer.dart';

import 'Courses/Btech/ACET/Acet_home.dart';
import 'package:page_transition/page_transition.dart';

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
      menuBackgroundColor: Colors.orangeAccent,
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
        title: Center(child: Text("Home")),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => ZoomDrawer.of(context)!.toggle(),
        ),
      ),
      body: Center(child: Text("Home")),
      // body: ElevatedButton(
      //     onPressed: () {
      //       setState(() {
      //         _zoomDrawerController.open?.call();
      //       });
      //     },
      //     child: Text("OPEN")),
    );
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
        backgroundColor: Colors.orangeAccent,
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
              onTap: () {},
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
        title: Text("Home"),
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
                        height: 30.h,
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
                    height: 2.5.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => owl_coder()));
                    },
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 30,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 20.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/Thub/THub_home/image1.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => T_Connect()));
                    },
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 30,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 20.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/Thub/THub_home/TCON.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 2.5.h,
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
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 30,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 20.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/Thub/THub_home/DR.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 2.5.h,
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
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 30,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 20.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/Thub/THub_home/PSD.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => codemind()));
                    },
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 30,
                        shadowColor: Colors.black,
                        child: Container(
                          height: 20.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/Thub/THub_home/CO.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 30,
                      shadowColor: Colors.black,
                      child: Container(
                        height: 20.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/Thub/THub_home/place.jpg'),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      )),
                  SizedBox(
                    height: 3.h,
                  ),
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
                        height: 30.h,
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
                  )
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
