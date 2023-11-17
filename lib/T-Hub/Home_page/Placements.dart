import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class place extends StatefulWidget {
  const place({super.key});

  @override
  State<place> createState() => _placeState();
}

class _placeState extends State<place> {
  final Img = [
    "assets/aditya/tevit.jpg",
    "assets/aditya/satya.jpg",
    "assets/aditya/placement.jpg",
    "assets/aditya/placement2.jpg",
    "assets/aditya/placement3.jpg",




  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
        body: Stack(children: [
      Container(
        color: Colors.white12,
      ),
      Column(
        children: [
          Stack(clipBehavior: Clip.none, children: [
            Container(
              color: Colors.grey.shade300,
              height: 300,
              width: double.infinity,
              child:Image.asset("assets/aditya/placecover1.jpg",fit: BoxFit.fill,)
            ),
            Positioned(
                bottom: -30,
                left: 20,
                right: 20,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),color: Colors.green,
                      ),
                  height: 100,
                  //color: Colors.black,
                child: Center(child: Text('PLACEMENT',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),)),
          ]),
         // Container(color: Colors.red,height: 150,),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.white,
              child: CarouselSlider(
                items: Img.map((e) => Container(width: double.infinity,
                      child: Image.asset(e,fit: BoxFit.fill,)
                    )).toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                  aspectRatio: 2.0,
                  initialPage: 2,
                ),
              ),
            ),
          )
        ],
      ),
    ]));
  }
}
