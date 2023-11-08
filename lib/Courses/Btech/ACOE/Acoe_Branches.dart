import 'package:flutter/material.dart';

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
    Details('With Global Excellence, National Relevance and Industry preference as prime motto, the Department of Computer Science and Engineering fosters greater learning experience by providing a broader scientific and practical approach to computation and its applications.\n'
        'With Global Excellence, National Relevance and Industry preference as prime motto, the Department of Computer Science and Engineering fosters greater learning experience by providing a broader scientific and practical approach to computation and its applications.\n'
        'Well-equipped class rooms, well networked Lab setups with latest software, Industry- Integrated projects, creative teaching-learning process, research based activities in the emerging areas, impressive placements, certification courses make the department well advanced on the professional front.\n'
        'Flagging the reputation of Aditya at national and international levels, the faculty of the department have been conferred with numerous prestigious awards and accolades. Several faculty members review technical articles for journals, serve on the editorial boards of national and international journals, deliver guest lectures and organize workshops and symposia.',
        'https://img.freepik.com/premium-vector/developers-team-flat-design-concept-illustration-people-characters_9209-5416.jpg',
        '23',
        '180',
        'img/19P31A0513.jpg',
        '20MH1A0540',
        'NALLABILLI JYOTHI',
        '14',
        '2127 to 3192'),
    //ECE
    Details(
      'With new ideas emerging relentlessly, both the graduation and post-graduation programs of Electronics and Communication Engineering Department try to excel by focussing on the needs of industry and society through student centric methodologies which is reflected in placements every year.\n'
      'The department is well-equipped with the state-of-art laboratories which encompass the wide area of applied and fundamental aspects of the prescribed curriculum. In addition, the department enables training on advanced technologies through Texas Instruments Innovation lab, E-Yantra Robotics Lab, Intel Intelligent Systems Lab etc.\n'
      'The department has signed MOUs with various industries for internship like BHEL, ONGC, Hindustan Shipyard Ltd, BSNL, Airports authorities of India, DLRL – Hyderabad, Rashtriya Inspat Nigam Limited etc.\n'
      'The faculty of the department persistently carry out research and are specialists from the fields of device electronics, signal and image processing, antennas, microwave & optical engineering, wireless communication, embedded systems and VLSI design.',
       'https://img.freepik.com/premium-vector/electronic-manufacturing-design-components-circuit-board-engineering-coordinate-symbols-concept_255805-396.jpg',
        '22',
        '180',
        '',
        '21MH5A0416',
        'M.GANGADHAR',
        '7',
        '32934 to 39218'),
    //CIV
    Details(
      '‘Apara Bhageeratha’- Sir Arthur Cotton remains revered and enjoys the pride of place in the hearts of the people in coastal Andhra Pradesh for being the genius architect behind the projects that made the delta region the ‘Rice Bowl’ for the state. With this inspiration taken form the genius architect, the department of Civil Engineering at Aditya College of Engineering transfers innovative applications to improve Civil Engineering practices which fulfil the requirements of civil construction industry.\n'
      'To face the challenges in the field, the department associates itself in different consultancy activities like quality control, design, detailing, soil testing and concrete testing to the construction sites in the close vicinity. To shore up transition of knowledge, eminent personnel from industry and academia are invited to deliver technical talks on emerging areas to keep the students abreast with the latest advancements.\n'
      'The department has state-of-the-art facilities, latest software like STAAD.Pro, AUTOCAD, Revit Structures, Robot Structure analysis etc. and well-equipped laboratories with costly equipment such as Total Station, Universal Testing Machine, Tri-axle Shear Testing Machine, Kaplan turbine, Francis turbine, Pelton wheel testing rig, Compression testing machine, Ultrasonic pulse velocity equipment etc.\n'
      'The department offers unique internship opportunities to students in companies like L&T Construction, Reliance Industries Limited, OIL, Irrigation Department, Govt. of A.P., Soma Constructions, APCO Infra tech, Vizag Steel Plant etc.',
      'https://img.freepik.com/free-vector/organic-engineers-working-construction_23-2148887080.jpg',
      '5',
      '150',
      '',
      '17P31A0114',
      'INDUGULA GANESH',
      '2.4',
      '47962 to 49866',
    ),
    //MEC
    Details('The department offers unique internship opportunities to students in companies like L&T Construction, Reliance Industries Limited, OIL, Irrigation Department, Govt. of A.P., Soma Constructions, APCO Infra tech, Vizag Steel Plant etc.\n'
        'The department lays impetus on hands-on training with the support of simulation packages such as CATIA, ANSYS, I-DEAS, PRO-E, UNIGRAPHICS and SOLID WORDS.\n'
    'The professional activities include guest lectures, industrial visits, workshops, seminars, technical festivals VEDA and programs under Mechanical Engineering Students Association (MESA), collegiate club of the Society of Automotive Engineers (SAE) and Auto gear club.\n'
    'The projects that received appreciation in various events organized at state and national level are Go-Kart, Quad bike, E-Bike, Reaping Machine and many more such highly relevant contraptions.\n'
    'Students are encouraged to do internships in reputed industries like TATA Motors PVT. LTD., Hindustan Shipyard, BHEL PVT. LTD., Bhilai Steel Plant, Bokaro Thermal Power Station, Nalco Mining Division etc.',
        'https://img.freepik.com/free-vector/team-engineers-workers-controlling-oil-gas-pipeline_74855-20378.jpg',
        '4',
        '150',
        '',
        '20P3540358',
        'KALLA TATAJI',
        '4.5',
        '61039 to 101347'
    ),
    //IT
    Details(
      'With Global Excellence, National Relevance and Industry preference as prime motto, the Department of Computer Science and Engineering fosters greater learning experience by providing a broader scientific and practical approach to computation and its applications.\n'
      'The department has been consistently fulfilling its role by transforming students into technically competent, socially responsible and ethically professional graduates. Remarkably, two students of the department received gold medals for being the toppers at the university level.\n'
      'Well-equipped class rooms, well networked Lab setups with latest software, Industry- Integrated projects, creative teaching-learning process, research based activities in the emerging areas, impressive placements, certification courses make the department well advanced on the professional front.\n'
      'Flagging the reputation of Aditya at national and international levels, the faculty of the department have been conferred with numerous prestigious awards and accolades. Several faculty members review technical articles for journals, serve on the editorial boards of national and international journals, deliver guest lectures and organize workshops and symposia.',
        'https://img.freepik.com/premium-vector/web-development-programming-languages-css-html-it-ui-programmer-cartoon-character-developing-website-coding-flat-illustration-banner_128772-862.jpg',
        '5',
        '60',
        '',
        '18P31A1230',
        'PADALA SATYA PRIYA',
        '15',
        '24581 to 29581'
    ),
    //EEE
    Details(
      'Established as one of the major departments of the Institute, the Department of Electrical and Electronics Engineering at Aditya strives to produce highly competent engineers equipped with advanced professional knowledge, entrepreneurial thinking, professional and ethical attitude, critical problem solving and analytical skills through effective teaching learning process, research and industrial collaboration.\n'
      'The faculty of the department, a rich blend with academic and industrial experience, have been constantly carrying out research on many cutting edge technologies with regular publications in ELSEVIER and other top international journals. The academic quality of the department is reflected by the laurels won by the students and the distinguished positions in industry and academia occupied by alumni.\n'
      'The department strives to upgrade the knowledge of faculty and students by organizing various Workshops, Industry-Institute Interactions, Continuous Improvement Programs inviting eminent personalities from Industry and academic Institutions, Seminars and Research activities. Students are provided internship programs in various power plants and industries like Reliance, SAIL, HPCL, GMR, GVK, VTPS, Vizag steel plant, ONGC, APGPCL, APEPDCL etc.\n'
      'The department spares no expense to equip the labs with latest equipment like Three phase AC Integrated Machine, DC Integrated Machine, Wireless Transmission of Electric Power using Tesla Coil and technical software like MATLAB & P-Spice.',
        'https://img.freepik.com/free-vector/electricity-lighting-composition-with-characters-electricians-with-power-line-gear-lamp_1284-54213.jpg',
        '3',
        '100',
        '',
        '20P35A0207',
        'KARRI SIVARAM DURGA',
        '4.2',
        '26532 to 72696'
    ),
    //AIML
    Details(
      'With Global Excellence, National Relevance and Industry preference as prime motto, the Department of Computer Science and Engineering fosters greater learning experience by providing a broader scientific and practical approach to computation and its applications.\n'
      'The department has been consistently fulfilling its role by transforming students into technically competent, socially responsible and ethically professional graduates. Remarkably, two students of the department received gold medals for being the toppers at the university level.\n'
      'Well-equipped class rooms, well networked Lab setups with latest software, Industry- Integrated projects, creative teaching-learning process, research based activities in the emerging areas, impressive placements, certification courses make the department well advanced on the professional front.\n'
      'Flagging the reputation of Aditya at national and international levels, the faculty of the department have been conferred with numerous prestigious awards and accolades. Several faculty members review technical articles for journals, serve on the editorial boards of national and international journals, deliver guest lectures and organize workshops and symposia.',
       'https://img.freepik.com/free-vector/ai-powered-content-creation-isometric-concept-with-chatbot-laptop-screen-3d-vector-illustration_1284-82523.jpg',
        '5',
        '60',
        '',
        '19P31A0556',
        'DASI VEERRAJU',
        '7.5',
        '16591 to 32732'

    ),
    //IOT
    Details(
        'With Global Excellence, National Relevance and Industry preference as prime motto, the Department of Computer Science and Engineering fosters greater learning experience by providing a broader scientific and practical approach to computation and its applications.\n'
            'The department has been consistently fulfilling its role by transforming students into technically competent, socially responsible and ethically professional graduates. Remarkably, two students of the department received gold medals for being the toppers at the university level.\n'
            'Well-equipped class rooms, well networked Lab setups with latest software, Industry- Integrated projects, creative teaching-learning process, research based activities in the emerging areas, impressive placements, certification courses make the department well advanced on the professional front.\n'
            'Flagging the reputation of Aditya at national and international levels, the faculty of the department have been conferred with numerous prestigious awards and accolades. Several faculty members review technical articles for journals, serve on the editorial boards of national and international journals, deliver guest lectures and organize workshops and symposia.',
        'https://img.freepik.com/premium-vector/printed-circuit_701961-1674.jpg',
        '5',
        '60',
        '',
        '18P31A1230',
        'PADALA SATYA PRIYA',
        '15',
        '24581 to 29581'
    ),
    //CSD
    Details(
        'With Global Excellence, National Relevance and Industry preference as prime motto, the Department of Computer Science and Engineering fosters greater learning experience by providing a broader scientific and practical approach to computation and its applications.\n'
            'The department has been consistently fulfilling its role by transforming students into technically competent, socially responsible and ethically professional graduates. Remarkably, two students of the department received gold medals for being the toppers at the university level.\n'
            'Well-equipped class rooms, well networked Lab setups with latest software, Industry- Integrated projects, creative teaching-learning process, research based activities in the emerging areas, impressive placements, certification courses make the department well advanced on the professional front.\n'
            'Flagging the reputation of Aditya at national and international levels, the faculty of the department have been conferred with numerous prestigious awards and accolades. Several faculty members review technical articles for journals, serve on the editorial boards of national and international journals, deliver guest lectures and organize workshops and symposia.',
        'https://img.freepik.com/free-vector/people-analyzing-growth-charts_23-2148866843.jpg',
        '5',
        '60',
        '',
        '19P31A0556',
        'DASI VEERRAJU',
        '7.5',
        '16591 to 32732'

    ),

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
                        child: Text('Aditya college of engineering' ,
                          style: TextStyle(
                              color: Colors.white ,
                              fontSize: 23,
                              // decoration: TextDecoration.underline

                          ),
                          textAlign: TextAlign.justify,
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
                    child: Container(
                      height: double.maxFinite,
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(vertical: 3),
                        child: Container(
                         // height: 5,
                          child: ListView.builder(
                          padding: EdgeInsets.only(left: s.width / 3),
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
