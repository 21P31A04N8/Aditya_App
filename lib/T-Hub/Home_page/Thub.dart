import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:myapplication/T-Hub/Codemind/Codemind.dart';
import 'package:myapplication/T-Hub/Drive_Ready/Technologies.dart';
import 'package:myapplication/T-Hub/Home_page/Placements.dart';
import 'package:myapplication/T-Hub/Home_page/Project_Space.dart';
import 'package:myapplication/T-Hub/Home_page/T_Connect.dart';
import 'package:myapplication/T-Hub/Home_page/owl_coder.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

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
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.green,
      //   title: Text("TECHNICAL HUB"),
      //   leading: IconButton(
      //       icon: Icon(Icons.menu),
      //       onPressed: () => ZoomDrawer.of(context)!.toggle()),
      // ),
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
                        child: ClipRRect(borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/Thub/THub_home/Thub1.png",fit: BoxFit.cover,)),
                      )),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  Stack(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    alignment: Alignment.bottomLeft,
                    children: [
                      InkWell(
                        onTap: (){
                          
                          Navigator.push(context, PageTransition(child: owl_coder() ,
                           type: PageTransitionType.leftToRight,
                           duration: Duration(milliseconds: 600)
                           ));
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 30.w, top: 5.sp),
                          width: 70.w,
                          height: 8.h,
                          margin: EdgeInsets.only(right: 1.h),
                          decoration: BoxDecoration(
                              color: Colors.purple.shade300,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)),
                              ),
                          child: Center(
                            child: Text('OWL CODER',
                                style: TextStyle(
                                    fontSize: 2.3.h, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, PageTransition(child: owl_coder() ,
                           type: PageTransitionType.leftToRight,
                           duration: Duration(milliseconds: 600)
                           ));
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
                      InkWell(
                        onTap:(){
                          Navigator.push(context , PageTransition(
                            child: T_Connect(),
                            duration: Duration(milliseconds: 600),
                             type: PageTransitionType.rightToLeft
                          )
                             );
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 30.w, left: 10.sp),
                          width: 70.w,
                          height: 8.h,
                          margin: EdgeInsets.only(right: 1.h),
                          decoration: BoxDecoration(
                              color: Colors.green.shade200,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                              ),
                          child: Center(
                              child: Text('T CONNECT',
                                  style: TextStyle(
                                      fontSize: 2.4.h,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context , PageTransition(
                            child: T_Connect(),
                            duration: Duration(milliseconds: 600),
                             type: PageTransitionType.rightToLeft
                          )
                             );
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
                      InkWell(
                        onTap: (){
                          Navigator.push(context , PageTransition(
                            child: Technology(),
                            duration: Duration(milliseconds: 600),
                             type: PageTransitionType.leftToRight
                          )
                             );
                        },
                        
                        child: Container(
                          padding: EdgeInsets.only(left: 30.w, top: 5.sp),
                          width: 70.w,
                          height: 8.h,
                          margin: EdgeInsets.only(right: 1.h),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)),
                              ),
                          child: Center(
                            child: Text('DRIVE READY',
                                style: TextStyle(
                                    fontSize: 2.4.h, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context , PageTransition(
                            child: Technology(),
                            duration: Duration(milliseconds: 600),
                             type: PageTransitionType.leftToRight
                          )
                             );
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
                      InkWell(
                        onTap: (){
                          Navigator.push(context , PageTransition(
                            child: Project_Space(),
                            duration: Duration(milliseconds: 600),
                             type: PageTransitionType.rightToLeft
                          )
                             );
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 30.w, left: 10.sp),
                          width: 70.w,
                          height: 8.h,
                          margin: EdgeInsets.only(right: 1.h),
                          decoration: BoxDecoration(
                              color: Colors.amber.shade300,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                              ),
                          child: Center(
                              child: Text('PROJECT SPACE',
                                  style: TextStyle(
                                      fontSize: 2.2.h,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context , PageTransition(
                            child: Project_Space(),
                            duration: Duration(milliseconds: 600),
                             type: PageTransitionType.rightToLeft
                          )
                             );
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
                      InkWell(
                        onTap: (){
                          Navigator.push(context , PageTransition(
                            child: codemind(),
                            duration: Duration(milliseconds: 600),
                             type: PageTransitionType.leftToRight
                          )
                             );
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 30.w, top: 5.sp),
                          width: 70.w,
                          height: 8.h,
                          margin: EdgeInsets.only(right: 1.h),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 232, 147, 176),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)),
                              ),
                          child: Center(
                              child: Text('CODEMIND',
                                  style: TextStyle(
                                      fontSize: 2.2.h,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context , PageTransition(
                            child: codemind(),
                            duration: Duration(milliseconds: 600),
                             type: PageTransitionType.leftToRight
                          )
                             );
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
                      InkWell(
                        onTap: (){
                          Navigator.push(context , PageTransition(
                            child: place(),
                            duration: Duration(milliseconds: 600),
                             type: PageTransitionType.rightToLeft
                          )
                             );
                        },
                        child: Container(
                          padding: EdgeInsets.only(right: 30.w, left: 10.sp),
                          width: 70.w,
                          height: 8.h,
                          margin: EdgeInsets.only(right: 1.h),
                          decoration: BoxDecoration(
                      
                              // color: Colors.white.shade300,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                                  color: Colors.brown[300]
                             ),
                          child: Center(
                              child: Text('PLACEMENTS',
                                  style: TextStyle(
                                      fontSize: 2.2.h,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context , PageTransition(
                            child: place(),
                            duration: Duration(milliseconds: 600),
                             type: PageTransitionType.rightToLeft
                          )
                             );
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
                        // height: 23.h,
                        // scrollDirection: Axis.vertical,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.5,
                        viewportFraction: 0.8,
                        aspectRatio: 2.0,
                        initialPage: 2,
                        autoPlayInterval: Duration(seconds: 2)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
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
