import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sizer/sizer.dart';
import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
class APC extends StatefulWidget {
  const APC({super.key});

  @override
  State<APC> createState() => _APCState();
}

class _APCState extends State<APC> {
  @override
  final pages=[
    Container(height: double.infinity,width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
            children:[ Container(
              height: 80.h,width: 100.w,
              color: Colors.white,
              child: SafeArea(
                child: Stack(
                  children: [
                    Positioned(top:5.h,
                      child: ClipRRect(borderRadius: BorderRadius.circular(30),
                        child: Container(
                          height: 6.h,width: 90.w,color: Colors.white,
                          child: Center(child: Text('Aditya Pharmacy College',style: TextStyle(fontSize: 22.sp),)),
                        ),
                      ),
                    ),
                    Positioned(right: 7.w,top: 2.h,
                      child: Transform.rotate(angle: pi/5,
                        child: Container(
                          height: 7.h,width: 20.w,
                          child: Image.network('https://cdn.pixabay.com/photo/2014/04/03/10/02/graduation-309661_640.png',fit: BoxFit.fill,),
                        ),
                      ),
                    ),
                    Positioned(top: 15.h,right: 3.w,
                      child: Container(height: 20.h,width: 95.w,
                        child: CarouselSlider(
                          items: [Container(
                            child: Image.network('http://adityapharmacy.edu.in/APC/banners/Web%20Banner%20Apc.jpg',fit: BoxFit.cover,),
                          ),
                            Container(
                              child: Image.network('http://adityapharmacy.edu.in/APC/banners/PharmacyNaac%20Banner.jpg',fit: BoxFit.cover,),
                            ),
                            Container(
                              child: Image.network('http://adityapharmacy.edu.in/APC/banners/Hostel_aditya.jpg',fit: BoxFit.cover,),
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
                      ),
                    ),
                    Positioned(top: 38.h,left:6.w,
                      child: Container(
                        height: 10.h,width: 60.w,
                        child: Text('ALL ABOUT',style: TextStyle(fontSize: 15.sp,),),
                      ),
                    ),
                    Positioned(top: 42.h,left: 6.w,
                        child: Text('WELCOME TO ADITYA PHARMACY COLLEGE',style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold,color: Colors.black),)
                    ),
                    Positioned(top: 46.h,left: 5.w,
                        child: ClipRRect(borderRadius: BorderRadius.circular(60),
                          child: Container(height: 30.h,width: 88.w,
                            child: Image.network('https://media.istockphoto.com/id/947295034/photo/a-group-of-graduates-throwing-graduation-caps-in-the-air.webp?b=1&s=612x612&w=0&k=20&c=Sp8ur-sEe0z769IDviHDzbu0YIGtDTslOfkoHGdLgaM=',fit: BoxFit.cover,),
                          ),
                        )
                    ),
                  ],
                ),
              ),
            ),
              Container(height: 125.h,width: 100.w,color: Colors.white,
                child: Column(
                  children: [
                    Container( height: 110.h,width: 90.w,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2,2),
                              blurRadius: 20,

                            )
                          ]
                      ),
                      child: Padding(
                        padding:  EdgeInsets.all(3.h
                        ),
                        child: Text('         Aditya College of Pharmacy was established in 2006 by Founder and Chairman , N.Sesha Reddy under Sarojini Educational Society who is the pioneer in educational institutions of Andhra Pradesh. The institute is affiliated to JNTUK, approved by AICTE and recognized by PCI, NewDelhi.. Aditya College of Pharmacy has a team of well experienced and most knowledgeable faculty members, and it facilitate the students to access well equipped laboratories and technologies available in the institute.\n'
                            '           Aditya College of Pharmacy creates an environment that opens up new worlds of opportunity. From the day of its inception, the college is producing highly qualified human resources who are academically superior and ethically strong. The campus is located at Surampalem, East Godavari District of Andhra Pradesh equidistant from Rajahmundry and Kakinada, the two major cities of the District.It offers B.Pharmacy , Pharm D & M. Pharmacy courses in Pharmaceutical technology, Pharmacology, Pharmaceutical Analysis & Quality assurance.\n',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.sp),),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(3.h),
                      child: Container(decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),color: Colors.black
                      ),
                        height: 7.h,width: 50.w,
                        child: Center(child: Text('Know More',style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold,color: Colors.white),)),
                      ),
                    )
                  ],
                ),
              ),
            ]
        ),
      ),
    ),
    Container(
      color: Colors.greenAccent,
      child: Center(child: Text('B-Pharmacy screen',style: TextStyle(fontSize: 50.sp),)),
    ),
    Container(
      color: Colors.yellow,
      child: Center(child: Text('M-Pharmacy screen',style: TextStyle(fontSize: 50.sp),)),
    ),
    Container(
      color: Colors.blue,
      child: Center(child: Text('Pharmacy-D screen',style: TextStyle(fontSize: 50.sp),)),
    )
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Builder(
        builder: (context)=>LiquidSwipe(pages: pages,
          fullTransitionValue: 800,
          waveType: WaveType.circularReveal,
          slideIconWidget: Icon(
            Icons.arrow_back_ios,color: Colors.white,
          ),
          positionSlideIcon: 0.8,
        ),
      ),
    );
  }
}