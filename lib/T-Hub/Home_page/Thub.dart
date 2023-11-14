import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:myapplication/Courses/Btech/ACET/Acet_Brancehes.dart';
import 'package:myapplication/Courses/Btech/ACOE/Acoe_home.dart';
import 'package:myapplication/Courses/Btech/Btech.dart';
import 'package:myapplication/T-Hub/Certifications.dart';
import 'package:myapplication/T-Hub/Codemind/Codemind.dart';
import 'package:myapplication/T-Hub/Home_page/Project_Space.dart';
import 'package:myapplication/T-Hub/Home_page/owl_coder.dart';
import 'package:myapplication/T-Hub/Team/Team.dart';
import 'package:myapplication/T-Hub/Drive_Ready/Technologies.dart';
import 'package:myapplication/T-Hub/Home_page/Thub.dart';
import 'package:myapplication/T-Hub/Thub_Events.dart';
import 'package:myapplication/T-Hub/Thub_info.dart';
import 'package:sizer/sizer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Thub extends StatefulWidget {
  const Thub({super.key});

  @override
  State<Thub> createState() => _ThubState();
}

class _ThubState extends State<Thub> {
  Widget page = MainScreen1();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
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

class MainScreen1 extends StatefulWidget {
  const MainScreen1({super.key});

  @override
  State<MainScreen1> createState() => _MainScreen1State();
}

class _MainScreen1State extends State<MainScreen1>
    with SingleTickerProviderStateMixin {
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
        title: Center(child: Text("Home ")),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => ZoomDrawer.of(context)!.toggle(),
        ),
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
                                  AssetImage('assets/Thub/THub_home/TCON.png'),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      )),
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
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>codemind()));
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
                                image: AssetImage('assets/Thub/THub_home/CO.png'),
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
                widget.onpagechange(MainScreen1());
              },
            ),
            ListTile(
              title: Text('Events'),
              leading: Icon(Icons.event),
              onTap: () {
                widget.onpagechange(Thub_Events());
              },
            ),
            ListTile(
              title: Text('Certifications'),
              leading: Icon(Icons.style_outlined),
              onTap: () {
                widget.onpagechange(Certifications());
              },
            ),
            ListTile(
              title: Text('Team'),
              leading: Icon(Icons.group),
              onTap: () {
                widget.onpagechange(Team());
              },
            ),
            ListTile(
              title: Text('Contact Us'),
              leading: Icon(Icons.phone),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Thub_info()));
              },
            )
          ]),
        ));
  }
}

class listItems {
  final Icon icon;
  final Text title;
  final Widget page;
  listItems(this.icon, this.title, this.page);
}
