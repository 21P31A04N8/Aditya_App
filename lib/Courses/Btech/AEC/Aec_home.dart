import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapplication/Courses/Btech/AEC/Aec_Branches.dart';

//import 'package:myapplication/Courses/Btech/Btech.dart';
import 'package:slide_action/slide_action.dart';

class Aec_home extends StatefulWidget {
  const Aec_home({super.key});

  @override
  State<Aec_home> createState() => _Aec_homeState();
}

class _Aec_homeState extends State<Aec_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.activeOrange,
        title: Text("Aditya Engineering College"),
        leading: IconButton(icon: Icon(Icons.menu),onPressed: (){
        },),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            CarouselSlider(
              items: [Container(
                child: Image.network(fit: BoxFit.fill,"https://www.acoe.edu.in/acoe/banners/240.jpg"),
              ),
                Container(
                  child: Image.network(fit: BoxFit.fill,"https://www.acoe.edu.in/acoe/banners/204.jpg"),),
                Container(
                  child: Image.network(fit: BoxFit.fill,"https://www.acoe.edu.in/acoe/banners/Btech_courses_2023.jpeg"),),
                Container(
                  child: Image.network(fit: BoxFit.fill,"http://acet.ac.in/ACET/banners/Crouse.jpg"),),
                Container(
                  child: Image.network(fit: BoxFit.fill,"http://acet.ac.in/ACET/banners/153.jpg"),
                )],
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                aspectRatio: 2.0,
                initialPage: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
              child: Text("The College is situated in an eco-friendly area of 180 acres with thick greenery at Surampalem, Gandepalli Mandal, East Godavari District, Andhra Pradesh. The College is 15 KM away from Samalkot Railway Station on Howrah-Chennai Railway line in South Central Railway. AEC offers various under graduate and post graduate courses in engineering, science and management and has state of laboratories and well stocked library and one of the best computing facilities. With an ideal teacher-taught ratio we strive for academic excellence through personalized attention. Since its inception AEC has achieved national standing in terms of academic performance, co-curricular and extra curricular activities. Known for its creative dynamism and flexibility the college offers varied programs blending skill development and value orientation to shape the carreer of students.There are Four blocks in AEC, one is Cotten Bhavan which contains Administrative Office, Examination Cell, Admission Office, CSE, ECE,IT and BSE and the second one is KLRao which contains EEE, MECHANICAL, CIVIL and Transport Office.Third one is Billgates Bhavan which contains EEE, MECHANICAL, CIVIL"
                ,style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,),
            ),
            Container(
              height: 450,
              width: 350,
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 250,
                    width: 300,
                    margin: EdgeInsets.only(top: 100),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.orange
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 110,
                        ),
                        Text("Tevit" , style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("31.31",
                          style: TextStyle(
                              fontSize: 25
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("AWS",style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic
                        ),)
                      ],
                    ),
                  ),

                  Card(
                    elevation: 40,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(360)
                    ),
                    child: Container(
                      height: 180,
                      width: 180,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360),
                          color: Colors.transparent
                      ),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular((360)),
                        child: Image.network(
                            fit:BoxFit.cover,
                            "http://acet.ac.in/ACET/banners/153.jpg"
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 110,
                      right: 40,
                      child: Text(1.toString() ,
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                            fontSize: 150,
                            fontWeight: FontWeight.bold
                        ),
                      )
                  )
                ],
              ),
            ),
            SlideAction(
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
                    child: Text(
                        "Slide to Next Page"
                    ),
                  ),
                );
              },
              thumbBuilder: (context, state) {
                return Container(
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.orange,
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Aecbranch()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
