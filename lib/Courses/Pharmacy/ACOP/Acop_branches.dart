import 'package:flutter/material.dart';

class Acop_Branch extends StatefulWidget {
  const Acop_Branch({super.key});

  @override
  State<Acop_Branch> createState() => _Acop_BranchState();
}

class _Acop_BranchState extends State<Acop_Branch>
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

    blink = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    blink_val = Tween<double>(begin: 0, end: 1).animate(blink!);

    controller!.addListener(() {
      setState(() {
        print(controller);
      });
    });

    blink!.addListener(() {
      setState(() {});
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
  List<String> names = ["B-Pharmcy", "Pharm-D", "M-Pharmcy"];
  int selectedIndex = 0;
  //Details? d;

  List<Details> det = [
    Details(
        "A Bachelor of Pharmacy (abbreviated B Pharm or PharmB or BS Pharm) is a graduate academic degree in the field of pharmacy. In many countries, this degree is a prerequisite for registration to practice as a pharmacist. Since both PharmB and PharmD are prerequisites to license in most western countries they're considered equivalent. In many western countries, the foreign graduates with BPharm, PharmB or BS Pharm practice similarly as PharmD graduates. It is analogous to MBBS vs. MD where MBBS is foreign equivalent of MD. It is training to understand the properties and impacts of medicines and developing the skills required to counsel patients about their use."
            "\nELIGIBILTIY CRITERIA"
            "\nIntermediate (10+2) with Bi.P.C/ M.P.C or its equivalent, with maths or biology, physics and chemistry as major subjects and with minimum 50% of marks and qualifying the entrance exam EAPCET conducted by Board of Technical Education, A.P."
            "Management Seats"
            "Register your name with Aditya Pharmacy College, Surampalem, Aditya nagar, East Godavari district, A.P, soon after the announcement of intermediate exam results.",
        'https://www.sharda.ac.in/blog/attachments/blog_images/Bachelor-in-Pharmacy.jpg',
        '5',
        '60',
        '',
        '163H1R0007',
        'BHAMIDIPATI MANASWINI	',
        '4',
        'below 30652',
        "assets/aditya/pharm.jpg"),
    Details(
        "A Doctor of Pharmacy (PharmD; Neo-Latin: Pharmaciae Doctor) is a professional doctorate in pharmacy. In some countries, it is a doctoral degree to practice the profession of pharmacy or to become a clinical pharmacist. In many countries, people with their Doctor of Pharmacy are allowed to practice independently and can prescribe drugs directly to patients. A PharmD program has significant experiential and/or clinical education components in introductory and advanced levels for the safe and effective use of drugs. Experiential education prepares graduates to be practice-ready, as they already have spent a significant amount of time training in areas of direct patient care and research."
            "\n ELIGIBILTIY CRITERIA"
            "\nIntermediate (10+2) with Bi.P.C/ M.P.C or its equivalent, with maths or biology, physics and chemistry as major subjects and with minimum 50% of marks and qualifying the entrance exam EAPCET conducted by Board of Technical Education, A.P.",
        'https://cdn.pixabay.com/photo/2020/01/09/17/16/pharmacy-4753340_640.jpg',
        '5',
        '60',
        '',
        '163H1R0041	',
        'DAS JINTU',
        '3.5',
        'below 30652',
        "assets/aditya/pharm1.jpg"),
    Details(
        "Master's degrees in pharmacy comprise both postgraduate and integrated master's programs in pharmacy, the latter of which comprises both undergraduate and postgraduate coursework and typically takes four to five years to complete."
            "\nELIGIBILTIY CRITERIA"
            "\nThe selection will be on the basis of GPAT Examination (Graduate Pharmacy Aptitude Test) for non-sponsored candidates and entrance test conducted by the University (PGCET) for sponsored and self-supporting candidates. Admission is either through GPAT / PGCET counseling",
        'https://cdn.pixabay.com/photo/2016/12/05/19/49/syringe-1884784_1280.jpg',
        '5',
        '60',
        '',
        '163H1R0022',
        'SAI PRIYANKA	',
        '3.5',
        'below 30652',
        "assets/aditya/mpharm.jpg"),
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
                        child: Text(
                          'Aditya  College of Pharmacy',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            // decoration: TextDecoration.underline
                          ),
                          textAlign: TextAlign.justify,
                        )),
                  ),

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
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(360),
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
                                                child: Image.asset(
                                                    fit: BoxFit.fill,
                                                    det[selectedIndex]
                                                        .Img2
                                                        .toString()),
                                              ),
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
                            padding: EdgeInsets.only(left: s.width / 2.5),
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
                  SizedBox(
                    height: 20,
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
  String? Img2;

  Details(String des, String img, String mcost, String seats, String stuimg,
      String stuid, String stuname, String pack, String cutoff, String img2) {
    this.description = des;
    this.img = img;
    this.mcost = mcost;
    this.seats = seats;
    this.stuimg = stuimg;
    this.stuid = stuid;
    this.stuname = stuname;
    this.pack = pack;
    this.cutoff = cutoff;
    this.Img2 = img2;
  }
}
