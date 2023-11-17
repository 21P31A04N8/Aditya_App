import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AcoeBranches extends StatefulWidget {
  const AcoeBranches({super.key});

  @override
  State<AcoeBranches> createState() => _AcoeBranchesState();
}

class _AcoeBranchesState extends State<AcoeBranches>
    with TickerProviderStateMixin {
  final PageController _pageController = PageController(initialPage: 0);
  AnimationController? controller;
  Animation? container;
  AnimationController? blink;
  Animation? blink_val;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    container = Tween<double>(begin: 200, end: 1000).animate(controller!);

    blink = AnimationController(vsync: this , duration: Duration(milliseconds: 1500));
    blink_val = Tween<double>(begin: 0 , end: 1).animate(blink!);

    controller!.addListener(() {
      setState(() {
        print(controller);
      });
    });

    blink!.addListener(() {
      setState(() {

      });
    });

    blink!.forward();

    controller!.forward();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  List<String> names = ['CSE' , 'ECE' , 'CIV' , 'MEC' , 'IT' , 'EEE' , 'AIML','IOT','CSD'];
  int selectedIndex = 0;
  //Details? d;

  List<Details> det = [
    //CSE
    Details(
        'Department of Computer Science and Engineering has been successfully functioning since 2004. It offers B.Tech (Computer Science and Engineering) with an intake of 240 students, B.Tech (Computer Science and Engineering) with specialization AI&ML intake of 180,B.Tech (Computer Science and Engineering) with specialization Data Science intake of 120 and M.Tech (Computer Science and Engineering) with 30 students.Department of CSE has good interactions and MOUs with leading technology domain Training & Development Industries. Department of CSE under ACET, signed pacts in the form of MoUs with Infosys (Campus Connect), Microsoft (Campus Agreement), APSSDC. It organizes Exhibitions, Conferences, Seminars and Workshops for both students and Faculty belonging to various Technical Educational Institutions all over India.\n'
            'The scope of computer science is endless. The students of the computer science and engineering are highly demanded by the recruiters of the top companies. Through innovative teaching-learning process a teamwork approach and leadership building experience, our students gain vital communication and critical-thinking skills. Our institution provides a platform for the students to enhance their employability skills through Industry Institute Collaboration.',
        //'https://img.freepik.com/free-vector/engineers-team-discussing-issues-construction-site_74855-4786.jpg?w=1060&t=st=1697969526~exp=1697970126~hmac=718e23f6dca871bb4f60f8ea0e8b85c23b999dadce55e3b7a951af42b781053a',
        'https://img.freepik.com/premium-vector/company-employees-take-online-education-courses_155327-84.jpg',
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
        'https://img.freepik.com/premium-vector/printed-circuit_701961-1674.jpg',
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
      'https://img.freepik.com/free-vector/engineers-team-discussing-issues-construction-site_74855-4786.jpg',
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
        'https://img.freepik.com/premium-vector/concept-truck-repair-service-mechanic-with-wrench-truck-tools-gears-vector-illustration_357257-1547.jpg',
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
        'https://img.freepik.com/free-vector/web-development-programmer-engineering-coding-website-augmented-reality-interface-screens-developer-project-engineer-programming-software-application-design-cartoon-illustration_107791-3863.jpg?w=1060&t=st=1698657888~exp=1698658488~hmac=82a822a68b5cceb07e51e496d820384f4884eecc2cfedec415629acdf21d2ba7',
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
        'https://img.freepik.com/premium-vector/lighting-electricity-energy-maintenance-service-technician-electrical-work-illustration_2175-8383.jpg',
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
        'https://img.freepik.com/free-vector/brain-with-digital-circuit-programmer-with-laptop-machine-learning-artificial-intelligence-digital-brain-artificial-thinking-process-concept-vector-isolated-illustration_335657-2246.jpg',
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Opacity(
                        opacity: blink_val!.value,
                        child:  Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(onPressed: (){
                                    Navigator.pop(context);
                                    
                                  },
                                  icon: Icon(Icons.arrow_back , color: Colors.white,)
                                  ),
                              
                            Text('Aditya engineering College' ,
                              style: TextStyle(
                                  color: Colors.white ,
                                  fontSize: 23,
                                  // decoration: TextDecoration.underline

                              ),
                              textAlign: TextAlign.justify,
                            ),
                            ],
                            ),
                          ],
                        )
                    ),
                  ),

                  SizedBox(height: 20,),
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
                              //print('list view : ' + selectedIndex.toString());

                              setState(() {});
                              _pageController.animateToPage(selectedIndex,
                                  duration: Duration(milliseconds: 50),
                                  curve: Curves.linear);
                            },
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
                         // print('page view: ' + selectedIndex.toString());
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
                                            // padding: EdgeInsets.symmetric(horizontal: 30),
                                            child: Center(
                                              child: Stack(children: [
                                                Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'PIN: ' +
                                                          det[selectedIndex]
                                                              .stuid
                                                              .toString(),
                                                      style: TextStyle(
                                                          color:
                                                          Colors.deepPurple,
                                                          fontSize: 20.sp,
                                                          fontWeight: FontWeight.bold
                                                          ),
                                                          textAlign: TextAlign.justify,
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text('NAME: ' ,style: TextStyle(
                                                              color:
                                                              Colors.deepPurple,
                                                              fontSize: 14.sp,
                                                              fontWeight: FontWeight.bold
                                                              ),),
                                                        Text(
                                                              det[selectedIndex]
                                                                  .stuname
                                                                  .toString(),
                                                          style: TextStyle(
                                                              color:
                                                              Colors.deepPurple,
                                                              fontSize: 14.sp,
                                                              fontWeight: FontWeight.bold
                                                              ),
                                                        ),
                                                      ],
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
                                                          Colors.orange.shade900,
                                                          fontSize: 23.sp,
                                                          fontWeight: FontWeight.bold
                                                          ),
                                                    )
                                                  ],
                                                ),
                                                // 
                                              ]),
                                            ),
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
                                                  color: Colors.grey.shade400),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(360),
                                                child: (selectedIndex == 3 || selectedIndex == 6) ? Icon(Icons.account_circle) : Image.asset(fit: BoxFit.fill,'assets/btech/ACET/'+det[selectedIndex]
                                                                .stuid
                                                                .toString()+'.jpg'),
                                              )
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
                    child: Container(
                      height: double.maxFinite,
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(vertical: 3),
                        child: Container(
                         // height: 5,
                          child: ListView.builder(
                          padding: EdgeInsets.only(left: s.width / 4),
                          scrollDirection: Axis.horizontal,
                          itemCount: names.length,
                          itemBuilder: (context, i) {
                            return Container(
                              //height: 5,

                              margin: EdgeInsets.symmetric(horizontal: 7),
                              width: (selectedIndex == i) ? 18 : 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(360),
                                color: Colors.white,
                              ),
                            );
                          }),
                        ),
                    ),
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
