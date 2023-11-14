import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myapplication/Home.dart';
import 'package:myapplication/T-Hub/Certifications.dart';
import 'package:myapplication/T-Hub/Team/Team.dart';
import 'package:myapplication/T-Hub/Thub_Events.dart';
import 'package:myapplication/T-Hub/Thub_info.dart';

class Thub_Home extends StatefulWidget {
  const Thub_Home({super.key});

  @override
  State<Thub_Home> createState() => _Thub_HomeState();
}

class _Thub_HomeState extends State<Thub_Home> with TickerProviderStateMixin {
  AnimationController? _controller;
  late Animation<double> animation;
  AnimationController? home;
  AnimationController? certify;
  AnimationController? events;
  AnimationController? team;
  AnimationController? call;
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    home = AnimationController(vsync: this, duration: Duration(seconds: 1));
    team = AnimationController(vsync: this, duration: Duration(seconds: 1));
    certify = AnimationController(vsync: this, duration: Duration(seconds: 1));
    call = AnimationController(vsync: this, duration: Duration(seconds: 1));
    events = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller!);

    _controller!.repeat();

    certify!.forward();
  }

  @override
  bool replace = true;
  List<Widget> screens = [
    Thub(),
    Thub_Events(),
    Certifications(),
    Team(),
    Thub_info()
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: Card(
            elevation: 10,
            shadowColor: Colors.green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(360)),
            child: Container(
              // margin: EdgeInsets.symmetric(vertical:8 , horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(360),
                  border: Border.all(color: Colors.green.shade900, width: 2)),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      home!.forward();
                      events!.reset();
                      certify!.reset();
                      call!.reset();
                      team!.reset();
                      selectedIndex = 0;
                      setState(() {});
                    },
                    child: SizedBox(
                      height: 42,
                      width: 37,
                      child: Column(
                        children: [
                          Lottie.asset(
                              controller: home,
                              fit: BoxFit.fill,
                              "assets/Thub/lotties/HOME.json"),
                          // Image.asset('assets/Thub/lotties/MECH.jpg'),
                          Container(
                            height: 3,
                            width: 20,
                            decoration: BoxDecoration(
                                color: (selectedIndex == 0)
                                    ? Colors.greenAccent
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(360)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      home!.reset();
                      events!.forward();
                      certify!.reset();
                      call!.reset();
                      team!.reset();
                      selectedIndex = 1;
                      setState(() {});
                    },
                    child: SizedBox(
                      height: 42,
                      width: 37,
                      child: Column(
                        children: [
                          Lottie.asset(
                              controller: events,
                              fit: BoxFit.cover,
                              "assets/Thub/lotties/EVENTS.json"),
                          Container(
                            height: 3,
                            width: 20,
                            decoration: BoxDecoration(
                                color: (selectedIndex == 1)
                                    ? Colors.green
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(360)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      home!.reset();
                      events!.reset();
                      certify!.forward();
                      call!.reset();
                      team!.reset();
                      selectedIndex = 2;
                      setState(() {});
                    },
                    child: SizedBox(
                      height: 45,
                      width: 35,
                      child: Column(
                        children: [
                          Lottie.asset(
                              controller: certify,
                              fit: BoxFit.cover,
                              height: 40,
                              width: 35,
                              "assets/Thub/lotties/CERTIFICATIONS.json"),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            height: 3,
                            width: 25,
                            decoration: BoxDecoration(
                                color: (selectedIndex == 2)
                                    ? Colors.green
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(360)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      home!.reset();
                      events!.reset();
                      certify!.reset();
                      call!.forward();
                      team!.reset();
                      selectedIndex = 3;
                      setState(() {});
                    },
                    child: SizedBox(
                      height: 40,
                      width: 30,
                      child: Column(
                        children: [
                          Lottie.asset(
                              controller: call,
                              fit: BoxFit.cover,
                              "assets/Thub/lotties/TEAM.json"),
                          SizedBox(height: 7),
                          Container(
                            height: 3,
                            width: 20,
                            decoration: BoxDecoration(
                                color: (selectedIndex == 3)
                                    ? Colors.green
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(360)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      home!.reset();
                      events!.reset();
                      certify!.reset();
                      call!.reset();
                      team!.forward();
                      selectedIndex = 4;
                      setState(() {});
                    },
                    child: SizedBox(
                      height: 40,
                      width: 30,
                      child: Column(
                        children: [
                          Lottie.asset(
                              controller: team,
                              fit: BoxFit.cover,
                              "assets/Thub/lotties/CALL.json"),
                          Container(
                            margin: EdgeInsets.only(top: 7),
                            height: 3,
                            width: 25,
                            decoration: BoxDecoration(
                                color: (selectedIndex == 4)
                                    ? Colors.green
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(360)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
