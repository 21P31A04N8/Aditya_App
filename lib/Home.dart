import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:lottie/lottie.dart';
import 'package:myapplication/Courses/BBA/AGBS.dart';
import 'package:myapplication/Courses/Btech/ACOE/Acoe_home.dart';
import 'package:myapplication/Courses/Btech/AEC/Aec_home.dart';
import 'package:myapplication/Courses/Btech/Btech.dart';
import 'package:myapplication/Courses/Diploma/Diploma_home.dart';
import 'package:myapplication/Courses/Pharmacy/ACOP/Acop_home.dart';
import 'package:myapplication/Courses/Pharmacy/APCS/Apcs_home.dart';
import 'package:myapplication/Events/Veda.dart';
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
                                setState(() {
                                  _expansionTileController.collapse();
                                  zoomDrawerController.close;
                                });
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
                                setState(() {
                                  _expansionTileController.collapse();
                                  zoomDrawerController.close;
                                });
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
                    setState(() {
                      _expansionTileController.collapse();
                      zoomDrawerController.close;
                    });
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
                    setState(() {
                      _expansionTileController.collapse();
                      zoomDrawerController.close;
                    });
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
              ],
            ),
            ExpansionTile(
              title: Text("Events"),
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Veda()));
                    setState(() {
                      _expansionTileController.collapse();
                      zoomDrawerController.close;
                    });
                  },
                  child: SizedBox(
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
