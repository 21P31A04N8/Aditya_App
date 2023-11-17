import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:myapplication/Courses/BBA/AGBS_branches.dart';
// import 'package:myapplication/Courses/Diploma/Branches.dart';
import 'package:transparent_image/transparent_image.dart';

class AGBS extends StatefulWidget {
  const AGBS({super.key});

  @override
  State<AGBS> createState() => _AGBSState();
}

class _AGBSState extends State<AGBS> with TickerProviderStateMixin {
  AnimationController? _animationController1;
  AnimationController? _animationController2;
  AnimationController? _animationController3;
  AnimationController? _animationController4;
  Animation? one;
  Animation? oned;
  Animation? two;
  Animation? twod;
  Animation? three;
  Animation? threed;
  Animation? four;
  Animation? fourd;

  AnimationController? _animationController5;
  AnimationController? _animationController6;
  AnimationController? _animationController7;
  AnimationController? _animationController8;
  Animation? one5;
  Animation? oned5;
  Animation? two6;
  Animation? twod6;
  Animation? three7;
  Animation? threed7;
  Animation? four8;
  Animation? fourd8;

  double s = 0;
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;
  bool check5 = false;
  bool check6 = false;

  double end = 250;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController1 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    _animationController2 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    _animationController3 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    _animationController4 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));

    oned = Tween<double>(begin: -0.3, end: 0).animate(CurvedAnimation(
        parent: _animationController1!,
        curve: Interval(0.5, 1, curve: Curves.decelerate)));

    two = Tween<double>(begin: 0, end: 250).animate(CurvedAnimation(
        parent: _animationController2!,
        curve: Interval(0, 0.3, curve: Curves.decelerate)));

    twod = Tween<double>(begin: -0.3, end: 0).animate(CurvedAnimation(
        parent: _animationController2!,
        curve: Interval(0.3, 0.6, curve: Curves.decelerate)));

    three = Tween<double>(begin: 0, end: 250).animate(CurvedAnimation(
        parent: _animationController3!,
        curve: Interval(0, 0.5, curve: Curves.decelerate)));

    threed = Tween<double>(begin: -0.3, end: 0).animate(CurvedAnimation(
        parent: _animationController3!,
        curve: Interval(0.5, 1, curve: Curves.decelerate)));

    four = Tween<double>(begin: 0, end: 250).animate(CurvedAnimation(
        parent: _animationController4!,
        curve: Interval(0, 0.5, curve: Curves.decelerate)));

    fourd = Tween<double>(begin: -0.3, end: 0).animate(CurvedAnimation(
        parent: _animationController4!,
        curve: Interval(0.5, 1, curve: Curves.decelerate)));

    _animationController1!.addListener(() {
      setState(() {});
    });
    _animationController2!.addListener(() {
      setState(() {});
    });
    _animationController3!.addListener(() {
      setState(() {});
    });
    _animationController4!.addListener(() {
      setState(() {});
    });

    _animationController5 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    _animationController6 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    _animationController7 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    _animationController8 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));

    one5 = Tween<double>(begin: 50, end: 250).animate(CurvedAnimation(
        parent: _animationController5!,
        curve: Interval(0, 0.5, curve: Curves.decelerate)));

    oned5 = Tween<double>(begin: 0.3, end: 0).animate(CurvedAnimation(
        parent: _animationController5!,
        curve: Interval(0.5, 1, curve: Curves.decelerate)));

    two6 = Tween<double>(begin: 50, end: 250).animate(CurvedAnimation(
        parent: _animationController6!,
        curve: Interval(0, 0.3, curve: Curves.decelerate)));

    twod6 = Tween<double>(begin: 0.3, end: 0).animate(CurvedAnimation(
        parent: _animationController6!,
        curve: Interval(0.3, 0.6, curve: Curves.decelerate)));

    three7 = Tween<double>(begin: 50, end: 250).animate(CurvedAnimation(
        parent: _animationController7!,
        curve: Interval(0, 0.5, curve: Curves.decelerate)));

    threed7 = Tween<double>(begin: 0.3, end: 0).animate(CurvedAnimation(
        parent: _animationController7!,
        curve: Interval(0.5, 1, curve: Curves.decelerate)));

    four8 = Tween<double>(begin: 0, end: 250).animate(CurvedAnimation(
        parent: _animationController8!,
        curve: Interval(0, 0.5, curve: Curves.decelerate)));

    fourd8 = Tween<double>(begin: 0.3, end: 0).animate(CurvedAnimation(
        parent: _animationController8!,
        curve: Interval(0.5, 1, curve: Curves.decelerate)));

    _animationController5!.addListener(() {
      setState(() {});
    });
    _animationController6!.addListener(() {
      setState(() {});
    });
    _animationController7!.addListener(() {
      setState(() {});
    });
    _animationController8!.addListener(() {
      setState(() {});
    });
  }

  Future show(String img, double height, double width) async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              
              content: Container(
                  height: height,
                  width: width,
                  color: Colors.blue,
                  child: Image.asset(fit: BoxFit.fill, img)));
        });
  }

  @override
  Widget build(BuildContext context) {
    List<String> img = [
      'https://aditya.ac.in/bschool/img/slides/01.jpg',
      'https://ik.imagekit.io/lhb4hvprkpz/agbs_assocham_HIbn0qGqM.jpg?updatedAt=1628163255365',
      'https://aditya.ac.in/bschool/img/slides/unschool_2022.png',
      'https://aditya.ac.in/bschool/img/slides/funnl_2022.png',
      'https://aditya.ac.in/bschool/img/slides/pin%20click_2022.png',
      'https://aditya.ac.in/bschool/img/slides/unschool_2022.png'
    ];

    Size s = MediaQuery.of(context).size;
    end = (s.width / 2) + 50;
    one = Tween<double>(begin: 0, end: end).animate(CurvedAnimation(
        parent: _animationController1!,
        curve: Interval(0, 0.5, curve: Curves.decelerate)));

    // timeDilation: 1.0;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Aditya Global Business School"),
        backgroundColor: Colors.blue,
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => ZoomDrawer.of(context)!.toggle()),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
              itemCount: img.length,
              itemBuilder: (context, i, j) {
                return Container(
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.4)),
                  child: FadeInImage.memoryNetwork(
                      fit: BoxFit.fill,
                      placeholder: kTransparentImage,
                      image: img[i]),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                );
              },
              options: CarouselOptions(
                  // scrollDirection: Axis.vertical,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  autoPlay: true),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240, top: 22),
              child: Text(
                "WHY AGBS?",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20, right: 18),
              child: Text(
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                  "AGBS is the first of its kind B School in this region, born out of sheer passion of the founding Chairman. The 30 year churning educational & pedagogic experience of Aditya is the foundation of AGBS. Aditya Global Business School (AGBS) guiding factors are inspired by internationally accepted values, such as the principles of the United Nations Global Compact. These principles seek to establish a process of continuous improvement of the management Institutions education to develop new generation business leaders capable of managing the complex challenges faced by business and the society at large. Taking the cue from these guiding factors AGBS adapts its curricula, research, teaching methodologies and institutional strategies to suit the new business challenges and opportunities."),
            ),
            SizedBox(
              height: 20,
            ),
            Text("BRANCHES",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
            Container(
              // margin: EdgeInsets.only(top: 100),
              padding: EdgeInsets.only(left: 20),
              width: double.infinity,
              height: 270 + ((s.width / 2) + 100),
              // color: Colors.black,
              child: Stack(
                // alignment: Alignment.centerRight,
                children: [
                  Positioned(
                    // left: 65,
                    bottom: two!.value,
                    child: GestureDetector(
                      onTap: () {
                        _animationController1!.reset();
                        _animationController3!.reset();
                        _animationController4!.reset();
                        _animationController5!.reset();
                        _animationController6!.reset();
                        _animationController7!.reset();
                        _animationController8!.reset();
                        check1 = !check1;
                        (check1)
                            ? _animationController2!.forward()
                            : _animationController2!.reverse();
                      },
                      child: Transform(
                        transform: Matrix4.skewY(twod!.value),
                        // origin: Offset(100,100),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          elevation: 20,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            height: (s.width / 2) + 100,
                            width: (s.width / 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.yellowAccent,
                                border: Border.all(
                                    color: Colors.yellow.shade900, width: 2)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'BDM',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(360)),
                                      elevation: 10,
                                      child: Container(
                                        height: (s.width) / 8,
                                        width: (s.width) / 8,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(360),
                                            border: Border.all(
                                                color: Colors.black),
                                            color: Colors.white),
                                        child: Center(
                                          child: IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          AGBS_branch_det(
                                                              bgcol: Colors
                                                                  .yellowAccent
                                                                  .shade400,
                                                              branch: 'BDM',
                                                              branchimg:
                                                                  'https://img.freepik.com/free-vector/pitch-meeting-concept-illustration_114360-6300.jpg?size=626&ext=jpg&ga=GA1.1.1724511929.1694535439&semt=sph')));
                                            },
                                            icon: Icon(Icons.arrow_forward),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  // margin: EdgeInsets.only(left: 50),
                                  height: ((s.width / 2) + 100) / 2,
                                  width: (s.width / 2) - 10,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.network(
                                        fit: BoxFit.cover,
                                        'https://img.freepik.com/free-vector/business-people-working-giving-tasks_1262-19728.jpg'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 60,
                    bottom: three!.value,
                    // bottom: 10,
                    child: InkWell(
                      onTap: () {
                        _animationController1!.reset();
                        _animationController2!.reset();
                        _animationController4!.reset();
                        _animationController5!.reset();
                        _animationController6!.reset();
                        _animationController7!.reset();
                        _animationController8!.reset();
                        check2 = !check2;
                        (check2)
                            ? _animationController3!.forward()
                            : _animationController3!.reverse();
                      },
                      child: Transform(
                        transform: Matrix4.skewY(threed!.value),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          elevation: 20,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            height: (s.width / 2) + 100,
                            width: (s.width / 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.redAccent.shade200,
                                border: Border.all(
                                    color: Colors.black, width: 2)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'BA',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Card(
                                      elevation: 20,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(360)),
                                      child: Container(
                                        height: (s.width) / 8,
                                        width: (s.width) / 8,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(360),
                                            border: Border.all(
                                                color: Colors.black),
                                            color: Colors.white),
                                        child: Center(
                                          child: IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          AGBS_branch_det(
                                                              bgcol: Colors
                                                                  .orange
                                                                  .shade400,
                                                              branch: 'BA',
                                                              branchimg:
                                                                  'https://img.freepik.com/premium-vector/businessmen-businesswomen-meeting_693425-10.jpg?size=626&ext=jpg&ga=GA1.1.1724511929.1694535439&semt=sph')));
                                            },
                                            icon: Icon(Icons.arrow_forward),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  // margin: EdgeInsets.only(left: 50),
                                  height: ((s.width / 2) + 100) / 2,
                                  width: (s.width / 2) - 10,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.network(
                                        fit: BoxFit.cover,
                                        'https://img.freepik.com/free-vector/young-businessman-with-professional-equipment-work-cartoon-vector_24797-1921.jpg'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 120,
                    bottom: four!.value,
                    child: InkWell(
                      onTap: () {
                        _animationController1!.reset();
                        _animationController2!.reset();
                        _animationController3!.reset();
                        _animationController5!.reset();
                        _animationController6!.reset();
                        _animationController7!.reset();
                        _animationController8!.reset();
                        check3 = !check3;
                        (check3)
                            ? _animationController4!.forward()
                            : _animationController4!.reverse();
                      },
                      child: Transform(
                        transform: Matrix4.skewY(fourd!.value),
                        child: Card(
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            height: (s.width / 2) + 100,
                            width: (s.width / 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                    color: Colors.blue.shade900, width: 2),
                                color: Colors.blueAccent.shade200),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'BBA',
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(360)),
                                      elevation: 10,
                                      child: Container(
                                        height: (s.width) / 8,
                                        width: (s.width) / 8,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(360),
                                            border: Border.all(
                                                color: Colors.black),
                                            color: Colors.white),
                                        child: Center(
                                          child: IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            AGBS_branch_det(
                                                                bgcol: Colors
                                                                    .blueAccent
                                                                    .shade200,
                                                                branch: "BBA",
                                                                branchimg:
                                                                    'https://img.freepik.com/free-vector/people-analyzing-growth-charts_23-2148866843.jpg?size=626&ext=jpg&ga=GA1.1.1724511929.1694535439&semt=sph')));
                                              },
                                              icon: Icon(
                                                Icons.arrow_forward,
                                              )),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  // margin: EdgeInsets.only(left: 50),
                                  height: ((s.width / 2) + 100) / 2,
                                  width: (s.width / 2) - 10,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.network(
                                        fit: BoxFit.cover,
                                        'https://img.freepik.com/free-vector/isometric-business-growth-abstract-concept-with-startup-rocket-launch-vector-illustration_1284-78731.jpg'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 100),
            Text("Latest information:", style: TextStyle(fontSize: 30)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      show('assets/BBA_img/bba_latest_info.jpg', 200,
                          double.infinity);
                    },
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue,
                          border: Border.all(color: Colors.orange, width: 3)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                            fit: BoxFit.cover,
                            'assets/BBA_img/bba_latest_info.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
