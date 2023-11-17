import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:sizer/sizer.dart';

import 'package:myapplication/T-Hub/Drive_Ready/Technologies.dart';

class codemind extends StatefulWidget {
  const codemind({super.key});

  @override
  State<codemind> createState() => _codemindState();
}

class _codemindState extends State<codemind> {
  final codeImg = [
    "assets/Thub/Codemind/1000.png",
    "assets/Thub/Codemind/900.png",
    "assets/Thub/Codemind/800.png",
    "assets/Thub/Codemind/700.png",
    "assets/Thub/Codemind/600.png",
    "assets/Thub/Codemind/500.png",
    "assets/Thub/Codemind/400.png",
    "assets/Thub/Codemind/300.png",
    "assets/Thub/Codemind/200.png",
    "assets/Thub/Codemind/100.png",
  ];
  var Individual_codeimg = [
    "assets/Thub/Codemind/codeing.jpg",
    "assets/Thub/Codemind/aptitude.jpg",
    "assets/Thub/Codemind/reasoning.jpg",
    "assets/Thub/Codemind/Softskills.jpg",
    "assets/Thub/Codemind/codeingcon.jpg",
  ];
  var names = [
    "Coding",
    "aptitude",
    "Resoning",
    "Softskills",
    "Codeing Contest",
  ];
  var coverImg = [
    "assets/Thub/Codemind/Coding.png",
    "assets/Thub/Codemind/Aptitude.png",
    "assets/Thub/Codemind/Resoning.png",
    "assets/Thub/Codemind/Softskills.jpg",
    "assets/Thub/Codemind/codeingcon.jpg",
  ];
  var Individual_codedata = [
    "Coding is the process of creating instructions in a programming language that a computer can understand and execute.Our distinctive approach to teaching is guaranteed to keep you entertained.",
    "We have various topics to learn like Number Series, Coding & Decoding, Letter Series, and so goes the list. In our platform you can take a competitor test or an experimenter test.",
    "We have various topics to learn like Analogy, Blood Relations, and so goes the list.In our platform you can take a competitor test or an experimenter test.",
    "Put your learning skills to the test with out course aligned quizzes.You can take test on various REA courses based on soft skills like Verbal Ability. LLSTECHNOLOGIES",
    "Thub hosts a monthly coding contest, showcasing the talents of participants. Winners are rewarded with prizes as a token of appreciation for their coding skills and achievements. This regular event fosters a dynamic and competitive coding community within Thub."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Codemind"),
        centerTitle: true,
        backgroundColor: Colors.pink[300],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              CarouselSlider(
                items: codeImg
                    .map((item) => Center(
                          child: Image.asset(item),
                        ))
                    .toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                  aspectRatio: 2.0,
                  initialPage: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                    width: double.infinity-20,
                    padding: EdgeInsets.all(14),
                    // height: 28.h,
                    decoration: BoxDecoration(
                        color: Colors.pink[300],
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                       
                        Text(
                          "Code Mind is a platform that focuses on crafting a skilled individual. Our unique and interactive secenario based learning modules are designed to help a student look at a problem in a life like perspective. We stongly believe that every mind isn't alike, and therefore we give the student a chace to express their opinion rather than trying to abide by a generalized one.",
                          style: TextStyle(fontSize: 17, color: Colors.white , height: 1.3),
                          textAlign: TextAlign.justify,
                        )
                      ],
                    )

                    //""),
                    ),
              ),
              ListView.builder(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: coverImg.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                individual_tech(
                                    context,
                                    Individual_codeimg[index],
                                    Individual_codedata[index],
                                    names[index]);
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    (index % 2 == 0)
                                        ? Padding(
                                            padding:
                                                EdgeInsets.only(left: 24.w),
                                            child: Container(
                                              height: 19.h,
                                              width: 70.w,
                                              decoration: BoxDecoration(
                                                  color: Colors.pink[100],
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    width: 100,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          names[index],
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Card(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                    elevation: 30,
                                                    shadowColor: Colors.black,
                                                    child: Container(
                                                      height: 18.h,
                                                      width: 35.w,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10)),
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  coverImg[
                                                                      index]))),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        : Container(
                                            height: 19.h,
                                            width: 70.w,
                                            decoration: BoxDecoration(
                                                color: Colors.pink[100],
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Card(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  elevation: 30,
                                                  shadowColor: Colors.black,
                                                  child: Container(
                                                    height: 18.h,
                                                    width: 35.w,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                coverImg[
                                                                    index]))),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        names[index],
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                  ],
                                ),
                              ),
                            )),
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

void individual_tech(
    context, String imgpath, String codedata, String codename) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30))),
      context: context,
      builder: (context) => ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              child: Image.asset(fit: BoxFit.fill, imgpath))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            codename,
                            style: TextStyle(fontSize: 32, color: Colors.cyan),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              codedata,
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ));
}
