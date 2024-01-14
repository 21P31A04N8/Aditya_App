import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class owl_coder extends StatefulWidget {
  const owl_coder({super.key});

  @override
  State<owl_coder> createState() => _owl_coderState();
}

class _owl_coderState extends State<owl_coder> with TickerProviderStateMixin {
  AnimationController? _controller_1;
  AnimationController? _controller_2;
  AnimationController? _controller_3;
  AnimationController? _controller_4;
  Animation? first;
  Animation? second;
  Animation? third;
  Animation? four;

  double _top = 20;
  double _left = 30;
  double _right = 30;
  double _top2 = 20;

  double _top_2 = 20;
  double _left_2 = 30;
  double _right_2 = 30;
  double _top2_2 = 20;

  double _top_3 = 20;
  double _left_3 = 30;
  double _right_3 = 30;
  double _top2_3 = 20;

  double _top_4 = 20;
  double _left_4 = 30;
  double _right_4 = 30;
  double _top2_4 = 20;
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller_1 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _controller_2 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _controller_3 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _controller_4 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    first = Tween<double>(begin: 20, end: 120).animate(_controller_1!);
    second = Tween<double>(begin: 20, end: 120).animate(_controller_2!);
    third = Tween<double>(begin: 20, end: 120).animate(_controller_3!);
    four = Tween<double>(begin: 20, end: 120).animate(_controller_4!);

    _controller_1!.addListener(() {
      setState(() {});
    });

    _controller_2!.addListener(() {
      setState(() {});
    });

    _controller_3!.addListener(() {
      setState(() {});
    });

    _controller_4!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Owl Coder"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(4.w),
            child: Card(
              elevation: 30,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade400),
                height: 20.h,
                width: 90.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(fit: BoxFit.cover,"assets/Thub/THub_home/Thub1.png")),
              ),
            ),
          ),
          Container(
            // height: 17.h,
            width: 90.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.purple[400],
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Owl Coder is an innovative training program of 60 days which enhances trainees on coding skills like Data structures and algorithms,Problem solving skills,Reasoning and Soft skills',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 15.sp, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 60.w),
            child: Container(
              child: Text(
                'Badges',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
              ),
            ),
          ),
          Stack(children: [
            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.only(
                  left: _left, right: _right, top: first!.value),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 250, 129, 244),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Color.fromARGB(255, 96, 8, 131))),
              padding:
                  EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 10),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(2.w),
                    child: Text(
                      'Leetcode-100 problems\nGeeks For Greeks-100 Problems\nCodechef-100 Problems\nHacker Rank-Problem Solving 2 star\nCodemind-owl sheet 1-10 Levels',
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            
            InkWell(
                onTap: () {
                  _top_2 = 20;
                  _top2_2 = 20;
                  _left_2 = 30;
                  _right_2 = 30;

                  _top_3 = 20;
                  _top2_3 = 20;
                  _left_3 = 30;
                  _right_3 = 30;

                  _top_4 = 20;
                  _top2_4 = 20;
                  _left_4 = 30;
                  _right_4 = 30;

                  _top = (_top == 120) ? 20 : 120;
                  _left = (_left == 30) ? 10 : 30;
                  _right = (_right == 30) ? 10 : 30;
                  _top2 = (_top2 == 20) ? 0 : 20;

                  setState(() {
                    _controller_2!.reverse();
                    _controller_3!.reverse();
                    _controller_4!.reverse();

                    (_top2 == 0)
                        ? _controller_1!.forward()
                        : _controller_1!.reverse();
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 200,
                    margin: EdgeInsets.only(left: 30, right: 30, top: _top2),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(255, 218, 6, 233),
                    ),
                    child: Row(
                      children: [
                        Card(
                          elevation: 80,
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(360)),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360)),
                            height: 30.w,
                            width: 30.w,
                            child: Image.asset(
                              'assets/Thub/THub_home/BO.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: Text(
                            'owl coder Badge1\nCompleted By\n 270 Owls',
                            style: TextStyle(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ]),
          SizedBox(
            height: 3.h,
          ),
          Stack(children: [
            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.only(
                  left: _left_2, right: _right_2, top: second!.value),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.red, width: 2)),
              padding:
                  EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 10),
              child: Center(
                  child: Text(
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
                'Leetcode-200 problems\nGeeks For Greeks-200 Problems\nCodechef-200 Problems\nHacker Rank-Problem Solving 4 star\nCodemind-owl sheet 1-20 Levels',
              )),
            ),
            InkWell(
                onTap: () {
                  _top = 20;
                  _top2 = 20;
                  _left = 30;
                  _right = 30;

                  _top_3 = 20;
                  _top2_3 = 20;
                  _left_3 = 30;
                  _right_3 = 30;

                  _top_4 = 20;
                  _top2_4 = 20;
                  _left_4 = 30;
                  _right_4 = 30;

                  _top_2 = (_top_2 == 100) ? 20 : 100;
                  _left_2 = (_left_2 == 30) ? 10 : 30;
                  _right_2 = (_right_2 == 30) ? 10 : 30;
                  _top2_2 = (_top2_2 == 20) ? 0 : 20;

                  setState(() {
                    _controller_1!.reverse();
                    _controller_3!.reverse();
                    _controller_4!.reverse();

                    (_top2_2 == 0)
                        ? _controller_2!.forward()
                        : _controller_2!.reverse();
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 200,
                    margin: EdgeInsets.only(left: 30, right: 30, top: _top2),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(255, 104, 9, 110),
                    ),
                    child: Row(
                      children: [
                        Card(
                          elevation: 80,
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(360)),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360)),
                            height: 30.w,
                            width: 30.w,
                            child: Image.asset(
                              'assets/Thub/THub_home/HO.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: Text(
                            'owl coder Badge2\nCompleted By\n 170 Owls',
                            style: TextStyle(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ]),
          SizedBox(
            height: 3.h,
          ),
          Stack(children: [
            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.only(
                  left: _left_3, right: _right_3, top: third!.value),
              decoration: BoxDecoration(
                  color: Colors.deepPurple[200],
                  borderRadius: BorderRadius.circular(30),
                  border:
                      Border.all(color: Colors.deepPurple.shade900, width: 2)),
              padding:
                  EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 10),
              child: Center(
                  child: Text(
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify,
                      'Leetcode-200 problems\nGeeks For Greeks-200 Problems\nCodechef-200 Problems\nHacker Rank-Problem Solving 4 star\nCodemind-owl sheet 1-20 Levels')),
            ),
            InkWell(
                onTap: () {
                  _top = 20;
                  _top2 = 20;
                  _left = 30;
                  _right = 30;

                  _top_2 = 20;
                  _top2_2 = 20;
                  _left_2 = 30;
                  _right_2 = 30;

                  _top_4 = 20;
                  _top2_4 = 20;
                  _left_4 = 30;
                  _right_4 = 30;

                  _top_3 = (_top_3 == 100) ? 20 : 100;
                  _left_3 = (_left_3 == 30) ? 10 : 30;
                  _right_3 = (_right_3 == 30) ? 10 : 30;
                  _top2_3 = (_top2_3 == 20) ? 0 : 20;

                  setState(() {
                    _controller_1!.reverse();
                    _controller_2!.reverse();
                    _controller_4!.reverse();

                    (_top2_3 == 0)
                        ? _controller_3!.forward()
                        : _controller_3!.reverse();
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 200,
                    margin: EdgeInsets.only(left: 30, right: 30, top: _top2),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(255, 73, 92, 202),
                    ),
                    child: Row(
                      children: [
                        Card(
                          elevation: 80,
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(360)),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360)),
                            height: 30.w,
                            width: 30.w,
                            child: Image.asset(
                              'assets/Thub/THub_home/GH.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: Text(
                            'owl coder Badge4\nCompleted By\n 80 Owls',
                            style: TextStyle(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ]),
          SizedBox(
            height: 3.h,
          ),
          Stack(children: [
            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.only(
                  left: _left_4, right: _right_4, top: four!.value),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 115, 235, 177),
                border: Border.all(color: Colors.green.shade900, width: 2),
                borderRadius: BorderRadius.circular(30),
              ),
              padding:
                  EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 10),
              child: Center(
                  child: Text(
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify,
                      'Leetcode-500 problems\nGeeks For Greeks-500 Problems\nCodechef-500 Problems\nHacker Rank-Problem Solving 6 star\nCodemind-owl sheet 2-20 Levels')),
            ),
            InkWell(
                onTap: () {
                  _top = 20;
                  _top2 = 20;
                  _left = 30;
                  _right = 30;

                  _top_2 = 20;
                  _top2_2 = 20;
                  _left_2 = 30;
                  _right_2 = 30;

                  _top_3 = 20;
                  _top2_3 = 20;
                  _left_3 = 30;
                  _right_3 = 30;

                  _top_4 = (_top_4 == 100) ? 20 : 100;
                  _left_4 = (_left_4 == 30) ? 10 : 30;
                  _right_4 = (_right_4 == 30) ? 10 : 30;
                  _top2_4 = (_top2_4 == 20) ? 0 : 20;

                  setState(() {
                    _controller_1!.reverse();
                    _controller_2!.reverse();
                    _controller_3!.reverse();

                    (_top2_4 == 0)
                        ? _controller_4!.forward()
                        : _controller_4!.reverse();
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 200,
                    margin: EdgeInsets.only(left: 30, right: 30, top: _top2),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(255, 40, 42, 49),
                    ),
                    child: Row(
                      children: [
                        Card(
                          elevation: 80,
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(360)),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360)),
                            height: 30.w,
                            width: 30.w,
                            child: Image.asset(
                              'assets/Thub/THub_home/GO.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: Text(
                            'owl coder Badge4\nCompleted By\n 36 Owls',
                            style: TextStyle(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ]),
          SizedBox(
            height: 3.h,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.green),
            height: 6.h,
            width: 90.w,
            child: Center(
              child: Text(
                'No.of problems Submitted',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Container(
            height: 7.h,
            width: 90.w,
            child: Row(
              children: [
                Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  child: Container(
                      height: 10.w,
                      width: 10.w,
                      child:
                          Image.asset("assets/Thub/THub_home/gfg logo 2.webp")),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 7.w),
                  child: Text(
                    'Geeks for Geeks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 15.sp),
                  ),
                ),
                Text(
                  '54928+ submissions',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                )
              ],
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Container(
            height: 7.h,
            width: 90.w,
            child: Row(
              children: [
                Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  child: Container(
                      height: 10.w,
                      width: 10.w,
                      child: Image.asset("assets/Thub/THub_home/leetcode.png")),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.w, left: 2.w),
                  child: Text(
                    'Leetcode',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 15.sp),
                  ),
                ),
                Text(
                  '45368+ submissions',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.orange),
                )
              ],
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Container(
            height: 7.h,
            width: 90.w,
            child: Row(
              children: [
                Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  child: Container(
                      height: 10.w,
                      width: 10.w,
                      child: Image.asset("assets/Thub/THub_home/codechef.png")),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 19.w, left: 2.w),
                  child: Text(
                    'CodeChef',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                        fontSize: 15.sp),
                  ),
                ),
                Text(
                  '36313+ submissions',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.brown),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
