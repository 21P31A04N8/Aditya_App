import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class branch_det extends StatefulWidget {
  final Color bgcol;
  final String branch;
  final String branchimg;

  const branch_det(
      {required this.bgcol,
      required this.branch,
      required this.branchimg,
      super.key});

  @override
  State<branch_det> createState() => _branch_detState();
}

class _branch_detState extends State<branch_det>
    with SingleTickerProviderStateMixin {
  String branch_key = "s";
  AnimationController? controller;
  Animation? zum;

  @override
  void initState() {
    super.initState();

    branch_key = widget.branch;
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    zum = Tween<double>(begin: 0, end: 30.w).animate(controller!);

    controller!.addListener(() {
      setState(() {});
    });

    controller!.forward();
  }
  // var temp = "CSE";

  @override
  int cur_page = 0;

  var des = {
    "CME":
        "Diploma in Computer science is a 1-3 year program that deals with computer programming and coding languages. Since it is a diploma course the depth is kept at the beginner level.",
    "ECE":
        "In this course, students learn engineering discipline electrical components such as semiconductor devices, electron tubes, diodes, transistors, integrated circuits, electronic circuits, devices and systems, and also learn passive components and printed circuit boards.",
    "CIV":
        "The course of Civil Engineering in Diploma basically focuses on planning, designing, execution and the maintenance of bridges, buildings, roads, etc. ",
    "MEC":
        "Diploma in Mechanical Engineering deals with design, manufacture and maintenance of mechanical equipment by applying the basic principles of mechanics. ",
    "EEE":
        " The course deals with installation, maintenance, troubleshooting, magnetism, control systems, signal processing and telecommunications.",
    "CSN":
        "Computer networking refers to interconnected computing devices that can exchange data and share resources with each other.",
  };

  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.cyan, Colors.white])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              //SizedBox(height: 20,),
              Expanded(
                flex: 2,
                child: Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Center(
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              size: 6.w,
                            )),
                      ),
                      Padding(
                                    padding: EdgeInsets.only(left: zum!.value , top:2.h),
                                    child: Text(
                                      widget.branch,
                                      style: TextStyle(
                                          fontSize: 10.w,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 19,
                child: PageView(
                    onPageChanged: (val) {
                      cur_page = val;
                      setState(() {});
                    },
                    // itemCount: 3,
                    children: [
                      Container(
                        height: double.maxFinite,
                        width: double.maxFinite,
                        // color: Colors.white,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                elevation: 20,
                                child: Container(
                                  height: 30.h,
                                  width: 88.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.grey.shade300),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.network(
                                          fit: BoxFit.cover, widget.branchimg)),
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                height: 35.h,
                                width: 90.w,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.black.withOpacity(0.4),
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        des[branch_key]!,
                                        style: TextStyle(
                                            fontSize: (5.5).w,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                        // textAlign: TextAlign.justify,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: double.maxFinite,
                        width: double.maxFinite,
                        // color: Colors.white,
                        child: (widget.branch == "CSN") ? Text("NO ECET RANKS YET" , style: TextStyle(fontSize: 20),) :Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('ECET RANKS - 2K23' , style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 3.h,),
                            Container(
                              
                              height: 30.h,
                              width: 80.w,
                              // color: Colors.green,
                              child: Image.asset('assets/dip_img/ECET/'+widget.branch+'.png')),
                          ],
                        ),
                        // child: Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Transform.rotate(
                        //       angle: (-10 * 3.14) / 180,
                        //       child: Container(
                        //         height: 70.w,
                        //         width: 40.w,
                        //         decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(30),
                        //             color: Colors.greenAccent),
                        //       ),
                        //     ),
                        //     Transform.rotate(
                        //       angle: (10 * 3.14) / 180,
                        //       child: Container(
                        //         height: 70.w,
                        //         width: 40.w,
                        //         // color: Colors.red,
                        //         decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(30),
                        //             color: Colors.red),
                        //       ),
                        //     )
                        //   ],
                        // ),
                      ),
                      Container(
                        height: double.maxFinite,
                        width: double.maxFinite,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "PLACEMENTS",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            (widget.branch == "CSN") ? Text("NO PLACEMENTS YET" , style: TextStyle(fontSize: 20),) :Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: Colors.green.shade900,
                                        width: 3)),
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset("assets/dip_img/" +
                                        widget.branch +
                                        ".jpg"))),
                          ],
                        ),
                      ),
                    ]),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 4.w,
                          width: 4.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                            border: Border.all(
                                color: (cur_page == 0)
                                    ? Colors.black
                                    : Colors.transparent,
                                width: 2),
                          ),
                          child: Container(
                            margin: EdgeInsets.all(2.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360),
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Container(
                          height: 4.w,
                          width: 4.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                            border: Border.all(
                                color: (cur_page == 1)
                                    ? Colors.black
                                    : Colors.transparent,
                                width: 2),
                          ),
                          child: Container(
                            margin: EdgeInsets.all(2.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360),
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Container(
                          height: 4.w,
                          width: 4.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                            border: Border.all(
                                color: (cur_page == 2)
                                    ? Colors.black
                                    : Colors.transparent,
                                width: 2),
                          ),
                          child: Container(
                            margin: EdgeInsets.all(2.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360),
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
