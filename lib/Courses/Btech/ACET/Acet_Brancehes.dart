import 'package:flutter/material.dart';

class Branches extends StatefulWidget {
  const Branches({super.key});

  @override
  State<Branches> createState() => _BranchesState();
}

class _BranchesState extends State<Branches>
    with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController(initialPage: 0);
  AnimationController? controller;
  Animation? container;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    container = Tween<double>(begin: 200, end: 1000).animate(controller!);

    controller!.addListener(() {
      setState(() {
        print(controller);
      });
    });

    controller!.forward();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  List<String> names = ['CSE', 'ECE', 'CIV', 'MEC', 'IT', 'EEE', 'AIML&CSD'];
  int selectedIndex = 0;
  //Details? d;

  List<Details> det = [
    //CSE
    Details(
        'Department of Computer Science and Engineering has been successfully functioning since 2004. It offers B.Tech (Computer Science and Engineering) with an intake of 240 students, B.Tech (Computer Science and Engineering) with specialization AI&ML intake of 180,B.Tech (Computer Science and Engineering) with specialization Data Science intake of 120 and M.Tech (Computer Science and Engineering) with 30 students.Department of CSE has good interactions and MOUs with leading technology domain Training & Development Industries. Department of CSE under ACET, signed pacts in the form of MoUs with Infosys (Campus Connect), Microsoft (Campus Agreement), APSSDC. It organizes Exhibitions, Conferences, Seminars and Workshops for both students and Faculty belonging to various Technical Educational Institutions all over India.\n'
            'The scope of computer science is endless. The students of the computer science and engineering are highly demanded by the recruiters of the top companies. Through innovative teaching-learning process a teamwork approach and leadership building experience, our students gain vital communication and critical-thinking skills. Our institution provides a platform for the students to enhance their employability skills through Industry Institute Collaboration.',
        //'https://img.freepik.com/free-vector/engineers-team-discussing-issues-construction-site_74855-4786.jpg?w=1060&t=st=1697969526~exp=1697970126~hmac=718e23f6dca871bb4f60f8ea0e8b85c23b999dadce55e3b7a951af42b781053a',
        'https://cdn.pixabay.com/photo/2023/10/15/13/59/walnuts-8316999_1280.jpg',
        '23',
        '180',
        '19P31A0513.jpg',
        '19P31A0513',
        'DASI NYISHITHA',
        '6.5',
        '2127 to 3192'),
    //ECE
    Details(
        'ECE department was established in the year 2004 with an intake of 60 students and now it has been expanded with an intake of 240 students. ECE plays a vital role in Technology Revolution. Our main aim is to generate new knowledge by engaging in cutting-in research to promote academic growth and to develop human potential to its fullest extent so that intellectually capable & imaginatively gifted leaders can emerge in a range of professions. We have Modern state of the art and well furnished labs like Microwave and Optical Communication Lab, Electronic Devices and Circuits lab, Modern Communication Lab, Research lab etc with excellent laboratory facilities and dedicated faculty.\n\n'
            'Electronics and Communication Engineering (ECE) is one of the fastest growing field of engineering with wide range of career opportunities considered to be leaders in the field of Technology. The aim of ECE engineer is to produce products that are smaller, smarter and multi-functional.',
        'https://cdn.pixabay.com/photo/2023/03/09/20/51/abstract-7840873_1280.jpg',
        '22',
        '180',
        '',
        '19P35A0428',
        'PULAVARTHI SAMAGNA',
        '7',
        '32934 to 39218'),
    //CIV
    Details(
      'The Department of Civil Engineering was established in 2013. It affords the students a solid grounding in better utilization of resources and increased standardization of construction techniques required by means of the construction industry. Students are taught how to use and rent progressive diagram methods and techniques. Exposure to cutting-edge facets planning, development plan and undertaking administration are key factors of the course.\n\n'
          'Civil engineers create, improve and protect the environment in which we live. They plan, design and oversee construction and maintenance of building structures and infrastructure, such as roads, railways, airports, bridges, harbors, dams, irrigation projects, power plants, and water and sewerage systems.',
      'https://img.freepik.com/free-vector/business-people-working-laptop-development_1262-18907.jpg?w=900&t=st=1697969449~exp=1697970049~hmac=dff737b96796cac2abad3f6bde6af7f4e8866a2fad917017fcbec83b53bbb427',
      '5',
      '150',
      '',
      '17P31A0114',
      'INDUGULA GANESH',
      '2.4',
      '47962 to 49866',
    ),
    //MEC
    Details(
        'The Department of Mechanical Engineering is a pioneer department since the establishment of college in 2011. The department has extensive facilities in terms of faculty, infrastructure & equipment. The department is recognised as a research centre by JNTUK, Kakinada for pursuing Ph.D. programme in Mechanical Engineering. The department has spacious laboratories and well equipped with experimental set-ups as per the requirement of the curriculum. The faculty are very active and encourage the students in fabricating real models viz., Go-kart, Robots, Solar based vehicles and other working models, which are very useful in day to day life and teach students with live examples.\n\n'
            'Mechanical engineers develop state-of-the-art technologies and exhilarating solutions for the mankind. We attempt to provide our students with a cheerful, productive and satisfying experience at all levels of their program of studies to explore the amazing world of mechanical engineering.',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX38jaxKpTRdw1MKpZ98pVVhPVlUYNAMQiYQ&usqp=CAU',
        '4',
        '150',
        '',
        '20P3540358',
        'KALLA TATAJI',
        '4.5',
        '61039 to 101347'),
    //IT
    Details(
        'The main source and strength of the department is its faculty, the department maintains the faculty as per the ratio , the main focus of the faculty members is to provide in-depth knowledge to the students in the respective course. The undergraduate program is emphasized on theoretical and practical aspects, apart from these the students are nurtured to participate in online coding competitions like TCS Hack Quest, Microsoft Imagine Cup, etc., the department has taken an initiation to expose the student towards the online coding platforms like Hackerrank, Code Chef. The department possesses computer labs with high end configuration and also CM Skill Excellence Center and also possesses a good placement record.\n\n'
            'Today the branch of Information Technology is becoming pervasive as technology is changing rapidly in the field of computer science. So the process of learning should not end with the acquisition of a degree.',
        'https://cache.careers360.mobi/media/article_images/2022/9/21/Different_Types_of_Jobs_in_Information_Technology.webp',
        '5',
        '60',
        '',
        '18P31A1230',
        'PADALA SATYA PRIYA',
        '15',
        '24581 to 29581'),
    //EEE
    Details(
        'The Department was established during the inception of the institute in 2004 as the department of Electrical and Electronics Engineering (EEE). Since its commencement, the primary objective of the department is to impart quality education, training and research at the undergraduate level in various areas of Electrical and Electronics Engineering with broad emphasis on design aspects of electrical systems.. The major areas of faculty expertise of the department include Power Electronics and Drives, Power Systems & Control Systems.The department has adequate teaching faculty having varied fields of specialization in Electrical Engineering. The faculty is engaged in active research in the areas of Power System Optimization, Adaptive Power System Stabilizers, Hybrid Power Systems, Power Electronic Drives, and Large Scale Uncertain Systems.\n\n'
            'The EEE Department endeavors to stream line the career options and paves ways for recent graduates to explore new career opportunities. EEE is one of the core streams of engineering, and it is required in any case. Hence the demand for this group never decreases, and it is the steadiest stream ever.',
        'https://www.mckvie.edu.in/wp-content/uploads/2021/06/electrical-engineering.jpg',
        '3',
        '100',
        '',
        '20P35A0207',
        'KARRI SIVARAM DURGA',
        '4.2',
        '26532 to 72696'),
    //AIML & CSD
    Details(
        'Department of Computer Science and Engineering has been successfully functioning since 2004. It offers B.Tech (Computer Science and Engineering) with an intake of 240 students, B.Tech (Computer Science and Engineering) with specialization AI&ML intake of 180,B.Tech (Computer Science and Engineering) with specialization Data Science intake of 120 and M.Tech (Computer Science and Engineering) with 30 students.\n\n'
            'The scope of computer science is endless. The students of the computer science and engineering are highly demanded by the recruiters of the top companies. Through innovative teaching-learning process a teamwork approach and leadership building experience, our students gain vital communication and critical-thinking skills. Our institution provides a platform for the students to enhance their employability skills through Industry Institute Collaboration.',
        'data:image/jpeg;base64,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',
        '5',
        '60',
        '',
        '19P31A0556',
        'DASI VEERRAJU',
        '7.5',
        '16591 to 32732'),
  ];

  Container con(String txt) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(360), color: Colors.white),
      child: Text(
        txt,
        style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    );
  }
  //Details  = new Details();

  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.pink, Colors.blue])),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          //appBar: AppBar(title:  Text('OM' , style: TextStyle(fontSize: 20),),),
          body: Center(
            child: Container(
              // color: Colors.red,

              height: container!.value,
              width: container!.value,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 4,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: names.length,
                        itemBuilder: (context, ind) {
                          return InkWell(
                            borderRadius: BorderRadius.circular(360),
                            radius: 0,
                            onTap: () {
                              selectedIndex = ind;
                              print('list view : ' + selectedIndex.toString());

                              setState(() {});
                              _pageController.animateToPage(selectedIndex,
                                  duration: Duration(milliseconds: 100),
                                  curve: Curves.linear);
                            },
                            child: Hero(
                              tag: 'Swaroop',
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(360),
                                    color: (selectedIndex == ind)
                                        ? Colors.white
                                        : Colors.black.withOpacity(0.3),
                                    border: Border.all(color: Colors.white)),
                                width: (names[ind].length > 3) ? 120 : 70,
                                child: Center(
                                  child: Text(
                                    names[ind],
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: (selectedIndex == ind)
                                            ? Colors.deepPurple
                                            : Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  //SizedBox(height: 10,),
                  Expanded(
                    flex: 40,
                    child: PageView.builder(

                      // pageSnapping: true,
                        padEnds: false,
                        controller: _pageController,
                        onPageChanged: (val) {
                          selectedIndex = val;
                          print('page view: ' + selectedIndex.toString());
                          setState(() {});
                        },
                        itemCount: names.length,
                        // allowImplicitScrolling: true,
                        itemBuilder: (context, ind) {
                          return Container(
                            width: double.infinity,
                            height: double.infinity,
                            padding: EdgeInsets.only(top: 30),
                            // color: Colors.white,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(60),
                                topLeft: Radius.circular(60),
                              ),
                              // color: Colors.black.withOpacity(0.3)
                            ),

                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    margin:
                                    EdgeInsets.symmetric(horizontal: 20),
                                    height: 250,
                                    width: s.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.deepPurple,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.network(
                                          fit: BoxFit.cover,
                                          det[selectedIndex].img.toString()),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.4),
                                        borderRadius:
                                        BorderRadius.circular(30)),
                                    margin:
                                    EdgeInsets.symmetric(horizontal: 20),
                                    child: Column(
                                      children: [
                                        Text(
                                          det[selectedIndex]
                                              .description
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 18,
                                              height: 1.5,
                                              color: Colors.white,
                                              overflow: TextOverflow.clip),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 450,
                                    width: double.infinity,
                                    margin:
                                    EdgeInsets.symmetric(horizontal: 20),
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.4),
                                        borderRadius:
                                        BorderRadius.circular(30)),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Positioned(
                                          top: 18,
                                          child: Text(
                                            'Highest Package: ' +
                                                det[selectedIndex]
                                                    .pack
                                                    .toString() +
                                                ' LPA',
                                            style: TextStyle(
                                                fontSize: 20,
                                                letterSpacing: 2,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontStyle: FontStyle.italic),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 20,
                                          child: Container(
                                            height: 300,
                                            width: 300,

                                            margin: EdgeInsets.only(top: 80),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(60),
                                                color: Colors.white),
                                            //padding: EdgeInsets.symmetric(horizontal: 30),
                                            child: Stack(children: [
                                              Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'PIN: ' +
                                                        det[selectedIndex]
                                                            .stuid
                                                            .toString(),
                                                    style: TextStyle(
                                                        color:
                                                        Colors.deepPurple,
                                                        fontSize: 20),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    'NAME: ' +
                                                        det[selectedIndex]
                                                            .stuname
                                                            .toString(),
                                                    style: TextStyle(
                                                        color:
                                                        Colors.deepPurple,
                                                        fontSize: 20),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    det[selectedIndex]
                                                        .pack
                                                        .toString() +
                                                        ' LPA',
                                                    style: TextStyle(
                                                        color:
                                                        Colors.deepPurple,
                                                        fontSize: 25),
                                                  )
                                                ],
                                              ),
                                              Positioned(
                                                  bottom: 0,
                                                  left: 4,
                                                  child: Container(
                                                    padding: EdgeInsets.all(10),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.only(
                                                            topRight: Radius
                                                                .circular(
                                                                60),
                                                            bottomLeft: Radius
                                                                .circular(
                                                                60)),
                                                        color: Colors.orange),
                                                    child: Center(
                                                      child: Text(
                                                        'LPA: ' +
                                                            det[selectedIndex]
                                                                .pack
                                                                .toString(),
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ))
                                            ]),
                                          ),
                                        ),
                                        Positioned(
                                          top: 60,
                                          child: Card(
                                            elevation: 40,
                                            shadowColor: Colors.black,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(360)),
                                            child: Container(
                                              height: 130,
                                              width: 130,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      360),
                                                  color: Colors.red),
                                              // child: ClipRRect(
                                              //   borderRadius:
                                              //       BorderRadius.circular(
                                              //           (360)),
                                              //   child: Image.asset(
                                              //       fit: BoxFit.cover,
                                              //       det[selectedIndex]
                                              //           .stuimg
                                              //           .toString()),
                                              // ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: s.width,
                                    margin:
                                    EdgeInsets.symmetric(horizontal: 20),
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black.withOpacity(0.4)),
                                    child: Column(
                                      children: [
                                        con('Management Cost: ' +
                                            det[selectedIndex]
                                                .mcost
                                                .toString()),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        con('EAPCET cut off: ' +
                                            det[selectedIndex]
                                                .cutoff
                                                .toString()),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                        padding: EdgeInsets.only(left: s.width / 3),
                        scrollDirection: Axis.horizontal,
                        itemCount: names.length,
                        itemBuilder: (context, i) {
                          return Container(

                            margin: EdgeInsets.symmetric(horizontal: 7),
                            width: (selectedIndex == i) ? 30 : 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              color: Colors.white,
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Details {
  String? description;
  String? img;
  String? mcost;
  String? seats;
  String? stuimg;
  String? stuid;
  String? stuname;
  String? pack;
  String? cutoff;

  Details(String des, String img, String mcost, String seats, String stuimg,
      String stuid, String stuname, String pack, String cutoff) {
    this.description = des;
    this.img = img;
    this.mcost = mcost;
    this.seats = seats;
    this.stuimg = stuimg;
    this.stuid = stuid;
    this.stuname = stuname;
    this.pack = pack;
    this.cutoff = cutoff;
  }
}
