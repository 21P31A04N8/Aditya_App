import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:myapplication/Courses/Btech/Btech.dart';

class Technology extends StatefulWidget {
  const Technology({super.key});

  @override
  State<Technology> createState() => _TechnologyState();
}

class _TechnologyState extends State<Technology> {
  var Techpic = [
    "assets/Thub/Technologies/arvrd.png",
   // "assets/Thub/Technologies/automation.png",
    "assets/Thub/Technologies/AWS DEVOPS.png",
    "assets/Thub/Technologies/AZURE DEVOPS.png",
    "assets/Thub/Technologies/ccna NETWORKING SECURITY.PNG",
    "assets/Thub/Technologies/celonis RPA.png",
    "assets/Thub/Technologies/cis.png",
    "assets/Thub/Technologies/cyber.png",
    "assets/Thub/Technologies/DATAANALYTICS.png",
    "assets/Thub/Technologies/DIGITALMARKETING.png",
    "assets/Thub/Technologies/fff.png",
    "assets/Thub/Technologies/Full stack.png",
    "assets/Thub/Technologies/GOOGLE DEVOPS.png",
    "assets/Thub/Technologies/IOTD.png",
    "assets/Thub/Technologies/MACHINE.png",
    "assets/Thub/Technologies/peg.png",
    "assets/Thub/Technologies/Red.png",
    "assets/Thub/Technologies/Salesforce.png",
    "assets/Thub/Technologies/SAP ABAP.jpg",
    "assets/Thub/Technologies/SERVICENOW.png",
    "assets/Thub/Technologies/UI UX.jpg",
  ];
  var Technames = [
    "Gaming With AR and VR",
    //"Automation",
    "AWS Devops",
    "AZURE Devops",
    "CCNA Networking Security",
    "Celonis RPA",
    "Cisco",
    "Cyber Security",
    "Data Analytics",
    "Digital Marketing",
    "Google Flutter",
    "Full stack ",
    "GOOGLE DEVOPS",
    "IOT",
    "Machine Learning",
    "Pega",
    "Red Hat",
    "Salesforce",
    "SAP ABAP",
    "ServiceNow",
    "UI/UX",
  ];
  var Individual_techname = [
    "assets/Thub/Team/PRASANTH.png",
    //"assets/Thub/Team/ASHOK-M.png",
    "assets/Thub/Team/ARAVIND.png",
    "assets/Thub/Team/BOBBY.png",
    "assets/Thub/Team/ASHOK-SIRIKI.png",
    "assets/Thub/Team/PETER.png",
    "assets/Thub/Team/VARDINI.png",
    "assets/Thub/Team/PETER.png",
    "assets/Thub/Team/VARDINI.png",
    "assets/Thub/Team/KIJSHORE.webp",
    "assets/Thub/Team/krishna.webp",
    "assets/Thub/Team/DIVYA.png",
    "assets/Thub/Team/KIJSHORE.webp",
    "assets/Thub/Team/PRAKASH.webp",
    "assets/Thub/Team/RAJESH-B.png",
    "assets/Thub/Team/MUTYALA-BABU.png",
    "assets/Thub/Team/VEERABABU.png",
    "assets/Thub/Team/SRINU.png",
    "assets/Thub/Team/GANAPATHI.png",
    "assets/Thub/Team/RAJA-CHOWDARI.png",
    "assets/Thub/Team/SDP.png",
  ];
  var individual_Techdata = [
    "Augmented Reality (AR) and Virtual Reality (VR) are technologies that allow users to experience digital environments in new and immersive ways. AR enhances the user's real-world environment with computer-generated elements, while VR provides a fully immersive, environment. computer-generated",
    //"Automation is the use of technology to perform tasks with reduced human assistance. Any industry that encounters repetitive tasks can use automation, but automation is more prevalent in the industries of manufacturing, robotics, and automotives, as well as in IT systems.",
    "Amazon Web Services (AWS) DevOps is a set of practices and tools that enable ure developers to rapidly and efficiently deploy code to production environments. AWS DevOps is designed to help organizations automate software deployment, increase software release speed, and improve software application quality.",
    "Azure DevOps is a set of practices and tools provided by Microsoft that enable ure developers to build, test, and deploy applications to the cloud. It includes a variety of services such as Azure Boards, Azure Repos, Azure Artifacts, Azure Pipelines, and Azure Test Plans that allow developers to manage the entire software development lifecycle.",
    "CCNA (Cisco Certified Network Associate) is a popular certification program that validates the knowledge and skills needed to install, configure, and troubleshoot network devices. Network security is an essential aspect of CCNA, as it covers topics such as securing network devices, implementing secure network access, and mitigating common network things.",
    "Celonis is a process mining software that uses data analytics and machine learning to visualize visualize and optimize business processes. When combined with Robotic Process Automation (RPA), it can further enhance process efficiency by automating repetitive and time- consuming tasks. The integration of Celonis with RPA enables businesses to identify process bottlenecks, eliminate inefficiencies, and automate workflows, resulting in cost savings and increased productivity.",
    "Cisco develops, manufactures, and sells networking hardware, software, telecommunications equipment and other high-technology services and products. Cisco specializes in specific tech markets, such as the Internet of Things (IoT), domain security, videoconferencing, and energy management with leading products including Webex, OpenDNS, Jabber, Duo Security, and Jasper. ",
    "Cybersecurity refers to the practices and technologies used to protect digital systems, networks, and sensitive information from unauthorized access, theft, or damage. It involves a range of activities such as threat analysis, risk management, and incident response. Cybersecurity is crucial for individuals, businesses, and governments to safeguard against cyberattacks and protect the privacy and data integrity.",
    "Data analytics converts raw data into actionable insights. It includes a range of tools, technologies, and processes used to find trends and solve problems by using data. Data analytics can shape business processes, improve decision-making, and foster business growth.",
    "Digital marketing refers to the use of digital channels such as social media, email, search engines, and websites to promote products or services and engage with customers. It includes a range of tactics such as content marketing, search engine optimization (SEO), pay-per-click advertising (PPC), and social media marketing.",
    "Flutter is Google's UI toolkit for building natively compiled applications for mobile, web, and desktop. It works with existing code and can be used to build frontend and backend applications in a variety of programming languages, including Dart, Java, and C/C++.",
    "Full stack refers to the combination of front-end and back-end development skills needed to create a complete web application. It nvolves knowledge of various technologies such as HTML, CSS, JavaScript, databases, and web servers. Full stack developers are responsible for designing, building, and maintaining the entire web application, from the user interface to the server-side logic.",
    "Google DevOps refers to the set of practices and tools used to automate and streamline the software development process on the Google Cloud Platform. It enables developers to collaborate more efficiently and deliver software faster with improved quality and reliability. Google DevOps offers a range of services and tools such as continuous integration, continuous delivery, monitoring, and logging to optimize the software development lifecycle.",
    "The Internet of Things (IoT) refers to the network of physical devices, vehicles, home appliances, and other items embedded with sensors, software, and connectivity that enable them to exchange data and interact with each other. IoT technology allows for real-time monitoring and control of devices and systems, creating opportunities for increased efficiency and automation in various industries.",
    "Machine learning is a subset of artificial intelligence that involves training computers to learn from data without being explicitly programmed. It is used to develop predictive models and algorithms that can make decisions or identify patterns in data. data. Machine learning has applications in a wide range of fields, from finance and healthcare to marketing and social media.",
    "Pega is a cloud-based software platform for building and deploying business process management (BPM) and customer relationship management (CRM) applications. It provides a range of tools and services for designing, automating, and managing business processes and customer interactions. Pega's low-code approach enables build and deploy organizations to build applications more quickly and with less coding.",
    "Red Hat OpenShift is a Kubernetes- based container application platform that allows developers to build, deploy, and manage applications in the cloud. OpenShift combines the benefits of Kubernetes with Red Hat's enterprise- grade reliability, security, and support.",
    "Salesforce is a cloud-based customer relationship management (CRM) platform that helps businesses manage their sales, marketing, and customer service activities. It offers a range of services and tools such as sales forecasting, lead and opportunity management, and customer support. Salesforce also provides a range of integrations and customization options to fit the needs of different businesses.",
    "SAP ABAP (Advanced Business Application Programming) is a high-level programming language developed by SAP for building business applications. It is used to develop custom modules and applications for SAP's enterprise resource planning (ERP) software. ABAP supports a wide range of programming constructs and features for developing complex business logic and data processing applications.",
    "ServiceNow is a cloud-based software platform that provides a range of IT service management (ITSM) and digital workflow automation solutions. It offers tools and services for managing incidents, problems, changes, and images, as well as automating common IT tasks such as onboarding/offboarding employees and managing software licenses.",
    "User Interface (UI) and User Experience (UX) are two related but distinct concepts in software design. Ul refers to the visual and interactive elements that users see and interact with when using a software application."
  ];
  @override
  Widget build(BuildContext context) {
    int h = MediaQuery.of(context).size.height.toInt();
    int w = MediaQuery.of(context).size.width.toInt();
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            centerTitle: true,
            title: Text("Technologies")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image(
                            image:
                                AssetImage("assets/Thub/Technologies/DR.png")))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 30,
                  shadowColor: Colors.black,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Drive Ready is a program designed to help attendees familiarize themselves with a technology and coding language of their choice. This hybrid mode of training ensures that every attendee is ready to ace every interview they attend. The trainings offered in this program are usually job specific and is designed to help the attendee acquire the adequate skills required to efficiently begin their career.",
                      style: TextStyle(color: Colors.white, fontSize: 17 , height: 1.3),
                    ),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Techpic.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                individual_tech(
                                    context,
                                    Individual_techname[index],
                                    individual_Techdata[index],
                                    Technames[index]);
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
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 20),
                                                    child: Center(
                                                      child: Text(
                                                        Technames[index],
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                            FontWeight
                                                                .bold),
                                                      ),
                                                    ),
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
                                                            Techpic[
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
                                                          Techpic[
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
                                                  Technames[index],
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
                  }),
            ],
          ),
        ));
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
                      height: 350,
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
                            Techname,
                            style: TextStyle(fontSize: 32, color: Colors.cyan),
                          ),
                          Text(
                            Techdata,
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 20),
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
