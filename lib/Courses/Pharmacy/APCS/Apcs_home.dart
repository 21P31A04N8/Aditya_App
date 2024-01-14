import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'package:myapplication/Courses/Btech/Btech.dart';
import 'package:myapplication/Courses/Pharmacy/APCS/Apcs_branches.dart';
import 'package:slide_action/slide_action.dart';

class Apcs_home extends StatefulWidget {
  const Apcs_home({super.key});

  @override
  State<Apcs_home> createState() => _Apcs_homeState();
}

class _Apcs_homeState extends State<Apcs_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 219, 59),
        title: Text("Aditya Pharmacy College" , style: TextStyle(color: Colors.black),),
        leading: IconButton(
            icon: Icon(Icons.menu , color: Colors.black,),
            onPressed: () => ZoomDrawer.of(context)!.toggle()),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CarouselSlider(
              items: [
                Container(
                  child: Image.network(
                      fit: BoxFit.fill,
                      "https://mymathews.com/media/gallery/Adithya_College_of_Phramacy_3.JPG"),
                ),
                Container(
                  child: Image.network(
                      fit: BoxFit.fill,
                      "http://adityapharmacy.edu.in/APC/banners/PharmacyNaac%20Banner.jpg"),
                ),
                Container(
                  child: Image.network(
                      fit: BoxFit.fill,
                      "http://adityapharmacy.edu.in/APC/banners/Hostel_aditya.jpg"),
                ),
                Container(
                  child: Image.network(
                      fit: BoxFit.fill,
                      "http://adityapharmacy.edu.in/APC/banners/Web%20Banner%20Apc.jpg"),
                ),
                Container(
                  child: Image.network(
                      fit: BoxFit.fill,
                      "http://acet.ac.in/ACET/banners/153.jpg"),
                )
              ],
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
                initialPage: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Aditya, the premier promoter of quality education in the coastal districts of Andhra Pradesh for the past two decades, leads various institutions ranging from K.G to P.G besides professional colleges like Engineering, Pharmacy and Nursing. Sri Nallamilli Seshareddy as a founder chairman, promoted the educational society in the name and style of Aditya Academy at Kakinada in the year 1984, with a vision and mission to create a platform for holistic growth and success to students at all levels."
                "Aditya has made its entry into the educational arena with a public school to meet the needs of primary and secondary education. In succession and with rapid strides, the academy established a number of Junior Colleges, Degree Colleges, PG Colleges, Engineering Colleges, Pharmacy Colleges, Nursing Colleges, Teacher Training Institutions"
                " The silver-jubilee educational group with 50,000+ students in 50+ institutions with 5000+ staff across three districts in Andhra Pradesh has become the standard bearer for quality education. In every stream, Aditya has become a spring-board for success through its powered vision, constant innovation and professional excellence.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
            // Container(
            //   height: 450,
            //   width: 350,
            //   margin: EdgeInsets.symmetric(horizontal: 5),
            //   child: Stack(
            //     alignment: Alignment.topCenter,
            //     children: [
            //       Container(
            //         height: 250,
            //         width: 300,
            //         margin: EdgeInsets.only(top: 100),
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(60),
            //             color: Colors.orange
            //         ),
            //         padding: EdgeInsets.symmetric(horizontal: 30),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             SizedBox(
            //               height: 110,
            //             ),
            //             Text("Tevit" , style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            //             SizedBox(height: 10,),
            //             Text("31.31",
            //               style: TextStyle(
            //                   fontSize: 25
            //               ),
            //             ),
            //             SizedBox(
            //               height: 10,
            //             ),
            //             Text("AWS",style: TextStyle(
            //                 fontSize: 30,
            //                 fontStyle: FontStyle.italic
            //             ),)
            //           ],
            //         ),
            //       ),
            //
            //       Card(
            //         elevation: 40,
            //         shadowColor: Colors.black,
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(360)
            //         ),
            //         child: Container(
            //           height: 180,
            //           width: 180,
            //
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(360),
            //               color: Colors.transparent
            //           ),
            //
            //           child: ClipRRect(
            //             borderRadius: BorderRadius.circular((360)),
            //             child: Image.network(
            //                 fit:BoxFit.cover,
            //                 "http://acet.ac.in/ACET/banners/153.jpg"
            //             ),
            //           ),
            //         ),
            //       ),
            //       Positioned(
            //           bottom: 110,
            //           right: 40,
            //           child: Text(1.toString() ,
            //             style: TextStyle(
            //                 color: Colors.black.withOpacity(0.3),
            //                 fontSize: 150,
            //                 fontWeight: FontWeight.bold
            //             ),
            //           )
            //       )
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SlideAction(
                trackBuilder: (context, state) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text("Slide to Next Page"),
                    ),
                  );
                },
                thumbBuilder: (context, state) {
                  return Container(
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 230, 0),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.chevron_right,
                      ),
                    ),
                  );
                },
                action: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Apcs_branch()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
