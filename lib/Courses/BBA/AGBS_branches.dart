import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AGBS_branch_det extends StatefulWidget {
  final Color bgcol;
  final String branch;
  final String branchimg;

  const AGBS_branch_det(
      {required this.bgcol,
      required this.branch,
      required this.branchimg,
      super.key});

  @override
  State<AGBS_branch_det> createState() => _AGBS_branch_detState();
}

class _AGBS_branch_detState extends State<AGBS_branch_det>
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
    zum = Tween<double>(begin: 0, end: 42.w).animate(controller!);

    controller!.addListener(() {
      setState(() {});
    });

    controller!.forward();
  }
  // var temp = "CSE";

  @override
  int cur_page = 0;

  var des = {
    "BBA":
        "A Bachelor of Business Administration (BBA) is a undergraduate degree program that focuses on various aspects of business and management. It is designed to provide students with a broad understanding of business principles and practices, preparing them for a wide range of roles in the business world. Here are some key aspects of the BBA course:\n \n1. **Duration:** Typically, a BBA program spans three to four years, depending on the educational system and the country where the program is offered.\n \n 2. **Curriculum:** The curriculum of a BBA program covers a variety of subjects related to business and management. Common core courses include business ethics, marketing, finance, accounting, operations management, human resource management, organizational behavior, business law, and economics.\n \n 3. **Specializations:** Some BBA programs allow students to choose a specialization in a specific area of business, such as finance, marketing, entrepreneurship, international business, information technology, or supply chain management. This allows students to tailor their education to their specific interests and career goals.\n \n 4. **Practical Experience:** Many BBA programs incorporate practical components such as internships, projects, and case studies to provide students with real-world experience and a better understanding of how business concepts are applied in practice.\n \n 5. **Soft Skills Development:** BBA programs often emphasize the development of soft skills such as communication, teamwork, critical thinking, problem-solving, and leadership. These skills are essential for success in the professional world.\n \n 6. **Career Opportunities:** Graduates with a BBA degree are well-prepared for entry-level positions in various industries and sectors. Common career paths include roles in business administration, marketing, finance, human resources, consulting, and entrepreneurship.\n \n 7. **Further Education:** Some students choose to pursue advanced degrees such as Master of Business Administration (MBA) after completing their BBA to enhance their career prospects and specialize further in a particular area of business.\n \n 8. **Global Perspective:** BBA programs often incorporate an international or global perspective, recognizing the increasingly interconnected nature of the business world. This may include the study of international business practices and global markets.\n \n It's important to note that specific details of BBA programs can vary between universities and countries. Prospective students should carefully review the curriculum, faculty, accreditation, and other aspects of the program when considering enrollment.",
    "BA":
        "A Bachelor of Arts (BA) is a undergraduate degree awarded in various disciplines within the liberal arts, humanities, and social sciences. The BA degree is typically characterized by a broad and flexible curriculum that allows students to explore a range of subjects. Here are some key features of a Bachelor of Arts program:\n \n Duration: The duration of a BA program is typically three to four years, depending on the educational system and country.\n \n Disciplines: BA programs cover a wide array of disciplines, including but not limited to:\n \nLiterature and Languages.\n \n 👉 History\n \n 👉 Philosophy\n \n 👉 Sociology\n \n 👉 Psychology\n \n 👉 Anthropology\n \n 👉 Political Science\n \n 👉 Economics\n \n 👉 Fine Arts\n \n 👉 Performing Arts\n \n 👉 Communication Studies\n \n Flexibility: One of the hallmarks of a BA program is its flexibility. Students often have the opportunity to choose a major (a primary area of focus) and, in some cases, one or more minors (secondary areas of focus). This allows students to tailor their education to their interests and career goals.\n \n Critical Thinking and Analytical Skills: BA programs typically emphasize the development of critical thinking, analytical, and communication skills. Students are encouraged to engage in discussion, research, and creative expression.\n \n Research and Writing: Research skills and the ability to write effectively are crucial components of many BA programs. Students may be required to complete research projects, essays, and other written assignments.\n \n Career Paths: Graduates with a BA degree often pursue a variety of career paths. While some may enter fields directly related to their major, others may explore opportunities in areas such as business, communication, education, government, and nonprofit organizations. Some BA graduates also choose to pursue advanced degrees like Master's or PhD programs.\n \n Interdisciplinary Opportunities: Some BA programs offer interdisciplinary courses or allow students to combine elements from different disciplines. This can provide a holistic and well-rounded educational experience.\n \n It's important to note that the specific structure and requirements of BA programs can vary between universities and countries. Students considering a BA degree should carefully review the curriculum, faculty, and available concentrations or majors to ensure that the program aligns with their academic and career goals.",
    "BDM":"BBA in digital marketing is a three-year bachelor program available after 12th. Digital marketing is the new and trending branch of marketing. Digital Advertising is a thriving industry not just in India, but worldwide. With almost all company converting their business online, the demand for digital marketers is growing at a rapid pace and is opening doors to many job-seekers. BBA in digital marketing update students with some of the major skills like concepts of sales conversions, analyzing marketing campaigns and finding strategies. Candidates who are posses with creative and innovative thinking, critical thinking skills and good interpersonal and communications skills may apply for this program.\n \n Highlights of BBA in Digital Marketing: \n \n 👉 BBA in digital marketing is spread into three years divided into six semesters.\n \n 👉 All the semester containing different subjects related to marketing and analysing business.\n \n 👉  The program also includes a project which enables the students to learn the practical skills of marketing.\n \n 👉  The curriculum of the program includes many subjects related to digital marketing such as Digital and social media marketing, Business Statistics, E-Commerce, etc.,\n \n Duration : 3 years Undergraduate Bachelor degree (6 semesters)\n \n Eligibility : Intermediate/Class XII or equivalent. Min. 60% aggregate\n \n Affiliation : Adikavi Nannayya University, Rajahmundry (AKNU)"
        
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
                                  Padding(
                                    padding: EdgeInsets.only(left: zum!.value),
                                    child: Text(
                                      widget.branch,
                                      style: TextStyle(
                                          fontSize: 10.w,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
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
                      // Container(
                      //   height: double.maxFinite,
                      //   width: double.maxFinite,
                      //   color: Colors.white,
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Transform.rotate(
                      //         angle: (-10 * 3.14) / 180,
                      //         child: Container(
                      //           height: 70.w,
                      //           width: 40.w,
                      //           decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.circular(30),
                      //               color: Colors.greenAccent),
                      //         ),
                      //       ),
                      //       Transform.rotate(
                      //         angle: (10 * 3.14) / 180,
                      //         child: Container(
                      //           height: 70.w,
                      //           width: 40.w,
                      //           // color: Colors.red,
                      //           decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.circular(30),
                      //               color: Colors.red),
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),
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
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: Colors.green.shade900,
                                        width: 3)),
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset("assets/dip_img/EEE.jpg"))),
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
                        // Container(
                        //   height: 4.w,
                        //   width: 4.w,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(360),
                        //     border: Border.all(
                        //         color: (cur_page == 1)
                        //             ? Colors.black
                        //             : Colors.transparent,
                        //         width: 2),
                        //   ),
                        //   child: Container(
                        //     margin: EdgeInsets.all(2.sp),
                        //     decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(360),
                        //         color: Colors.black),
                        //   ),
                        // ),
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
