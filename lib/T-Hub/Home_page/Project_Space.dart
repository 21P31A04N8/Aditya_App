import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Project_Space extends StatefulWidget {
  const Project_Space({super.key});

  @override
  State<Project_Space> createState() => _Project_SpaceState();
}

class _Project_SpaceState extends State<Project_Space> {
  var project_Individualdata_1 = [
    "Artificial intelligence (AI) is the ability of a computer program or a machine to think and learn. It is also a field of study which tries to make computers. They work on their own without being encoded with commands.Machine learning (ML) is a field of artificial intelligence intelligence that allows systems to learn and improve from experience without being explicitly programmed. It has become an increasingly popular topic in recent years due to the many practical applications it has in a variety of industries.",
    "DevOps is a methodology in the software development and IT industry. Used as a set of practices and tools, DevOps integrates and automates the work of software development (Dev) and IT operations (Ops) as a means for improving and shortening the systems development life cycle. DevOps is complementary to agile software development; several DevOps aspects came from the agile way of working",
    "Full stack development refers to the end-to-end application software development, including the front end. and back end. The front end consists of the user interface, and the back end takes care of the business logic and application workflows.",
    "The Internet of things (IoT) describes physical objects (or groups of such objects) with sensors, processing ability, software and other technologies that connect and exchange data with other devices and systems over the Internet or other communications networks.",
    "Cloud computing is the on-demand availability of computer system resources, especially data storage (cloud storage) and computing power, without direct active management by the user. Large clouds often have functions distributed over multiple locations, each of which is a data center. Cloud computing relies on sharing of of resources to achieve coherence and typically uses a pay- as-you-go model, which can help in reducing capital expenses but may also lead to unexpected operating expenses for users.",
    "A game is a structured form of play, usually undertaken for entertainment or fun, and sometimes used as an educational tool.Many games are also considered to be work (such as professional players of spectator sports or games) or art (such as jigsaw puzzles or games involving an artistic layout such as Mahjong, solitaire, or some video games."
  ];
  var Project_Individual = [
    "assets/Thub/Project_Space/Individual_prtoject/aiml.jpg",
    "assets/Thub/Project_Space/Individual_prtoject/cloud.jpg",
    "assets/Thub/Project_Space/Individual_prtoject/devop.jpg",
    "assets/Thub/Project_Space/Individual_prtoject/fsd.jpg",
    "assets/Thub/Project_Space/Individual_prtoject/gaming.jpg",
    "assets/Thub/Project_Space/Individual_prtoject/iot (2).jpg"
  ];
  var project_tech = [
    "assets/Thub/Project_Space/logo-aiml.png",
    "assets/Thub/Project_Space/logo-devops.png",
    "assets/Thub/Project_Space/logo-fullstack.png",
    "assets/Thub/Project_Space/logo-iot.png",
    "assets/Thub/Project_Space/logo-cloud.png",
    "assets/Thub/Project_Space/logo-gaming.png"
  ];
  var project_name = [
    "AI-ML",
    "DEVOPS",
    "Full Stack",
    "IOT",
    "Cloud Compiting",
    "Gaming With AR and VR"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(255, 223, 0, 1),
          title: Text("Project Space"),
        ),
        body: Column(
          children: [
             SizedBox(height: 20,),
            CarouselSlider(
              items: [
                Container(
                    width: 350,
                    child: Image.asset(
                        fit: BoxFit.fill,
                        "assets/Thub/Project_Space/deepdive2.jpg")),
                Container(
                    width: 350,
                    child: Image.asset(
                        fit: BoxFit.fill,
                        "assets/Thub/Project_Space/deepdive3.jpg")),
                Container(
                    width: 350,
                    child: Image.asset(
                        fit: BoxFit.fill,
                        "assets/Thub/Project_Space/depdiveday.jpg")),
                Container(
                    width: 350,
                    child: Image.asset(
                        fit: BoxFit.fill,
                        "assets/Thub/Project_Space/implement2.jpg")),
                Container(
                    width: 350,
                    child: Image.asset(
                        fit: BoxFit.fill,
                        "assets/Thub/Project_Space/implementday.jpg")),
                Container(
                    width: 350,
                    child: Image.asset(
                        fit: BoxFit.fill,
                        "assets/Thub/Project_Space/onboarding2.jpg")),
                Container(
                    width: 350,
                    child: Image.asset(
                        fit: BoxFit.fill,
                        "assets/Thub/Project_Space/onboarding3.jpg")),
                Container(
                    width: 350,
                    child: Image.asset(
                        fit: BoxFit.fill,
                        "assets/Thub/Project_Space/onboardingday.jpg")),
              ],
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
                initialPage: 2,
                height: 250
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 30,
                shadowColor: Colors.black,
                child: Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 223, 0, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Drive Ready is a program designed to help attendees familiarize themselves with a technology and coding language of their choice. This hybrid mode of training ensures that every attendee is ready to ace every interview they attend. The trainings offered in this program are usually job specific and is designed to help the attendee acquire the adequate skills required to efficiently begin their career.",
                    textAlign: TextAlign.justify,
                    style: TextStyle( fontSize: 17),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: project_tech.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                individual_tech(
                                    context,
                                    Project_Individual[index],
                                    Project_Individual[index],
                                    project_name[index]);
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
                                                  color: Colors.blue[100],
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
                                                          project_name[index],
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
                                                                  project_tech[
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
                                                color: Colors.blue[100],
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
                                                                project_tech[
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
                                                        project_name[index],
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
            ),
          ],
        ),
      ),
    );
  }
}

void individual_tech(
    context, String imgpath, String Techdata, String Techname) {
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
                      height: 250,
                      width: double.infinity,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              child: Image.asset(fit: BoxFit.cover, imgpath))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            Techname,
                            style: TextStyle(fontSize: 32, color: Colors.cyan),
                          ),
                          Text(
                            Techdata,
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 18),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Color.fromRGBO(255, 223, 0, 1),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "PROJECTS",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
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
