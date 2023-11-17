import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:slide_action/slide_action.dart';

import 'Acoe_Branches.dart';

class Acoe_home extends StatefulWidget {
  const Acoe_home({super.key});

  @override
  State<Acoe_home> createState() => _Acoe_homeState();
}

class _Acoe_homeState extends State<Acoe_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Aditya College of Engineering"),
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => ZoomDrawer.of(context)!.toggle()),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            CarouselSlider(
              items: [
                Container(
                  color: Colors.grey.shade300,
                  child: Image.asset("assets/aditya/aditya1.jpg",fit: BoxFit.cover,)
                ),
                Container(
                  color: Colors.grey.shade300,
                  child: Image.asset("assets/aditya/aditya4.jpg",fit: BoxFit.cover,)
                ),
                Container(
                  color: Colors.grey.shade300,
                  child: Image.asset("assets/aditya/aditya3.jpg",fit: BoxFit.cover,)
                ),
                Container(
                  color: Colors.grey.shade300,
                  child:Image.asset("assets/aditya/aditya8.jpg",fit: BoxFit.cover,)
                ),
                Container(
                  color: Colors.grey.shade300,
                  child: Image.asset("assets/aditya/adity7.jpg",fit: BoxFit.cover,),
                ),
                Container(
                  color: Colors.grey.shade300,
                  child: Image.asset("assets/aditya/aditya13.jpg",fit: BoxFit.cover,)
                ),

              ],
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
                initialPage: 2,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "The College is situated in an eco-friendly area of 180 acres with thick greenery at Surampalem, Gandepalli Mandal, East Godavari District, Andhra Pradesh. The College is 15 KM away from Samalkot Railway Station on Howrah-Chennai Railway line in South Central Railway.  ACOE offers various under graduate and post graduate courses in engineering, science and management and has state of laboratories and well stocked library and one of the best computing facilities. With an ideal teacher-taught ratio we strive for academic excellence through personalized attention. Since its inception ACOE has achieved national standing in terms of academic performance, co-curricular and extra curricular activities. Known for its creative dynamism and flexibility the college offers varied programs blending skill development and value orientation to shape the carreer of students.There are two blocks in ACOE, one is Ramanujan Bhavan which contains Administrative Office, Examination Cell, Admission Office, CSE, ECE, IOT, AIML  and Transport office and the second one is which contains EEE, MECHANICAL, CIVIL.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              height: 450,
              width: 350,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 250,
                    width: 300,
                    margin: const EdgeInsets.only(top: 100),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.deepPurple[400]),
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 110,
                        ),
                        Text(
                          "Tevit",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold , color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "31.31",
                          style: TextStyle(fontSize: 25 , color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "AWS",
                          style: TextStyle(
                              fontSize: 30, fontStyle: FontStyle.italic , color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Card(
                    elevation: 40,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(360)),
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360),
                          color: Colors.transparent),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular((360)),
                        child: Image.asset('assets/aditya/tevit.jpg')
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 110,
                      right: 40,
                      child: Text(
                        1.toString(),
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.4),
                            fontSize: 150,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
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
                    child: const Center(
                      child: Text("Slide to Next Page"),
                    ),
                  );
                },
                thumbBuilder: (context, state) {
                  return Container(
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
                action: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AcoeBranches()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
