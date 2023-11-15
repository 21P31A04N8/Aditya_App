import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class place extends StatefulWidget {
  const place({super.key});

  @override
  State<place> createState() => _placeState();
}

class _placeState extends State<place> {
  final Img = [
    "https://technicalhub.io/images/placements/tevit.png",
    "https://technicalhub.io/images/hv.jpg",
    "https://technicalhub.io/images/hv2.jpg",
    "https://technicalhub.io/images/jp1.jpg",
    "https://technicalhub.io/images/jp2.jpg",
    "https://technicalhub.io/images/aws4.jpg",
    "https://technicalhub.io/images/aws3.jpg",
    "https://technicalhub.io/images/aws2.jpg",
    "https://technicalhub.io/images/aws1.jpg",
    "https://technicalhub.io/images/placements/vinodh.png",
    "https://technicalhub.io/images/placements/veerababu.png",
    "https://technicalhub.io/images/placements/satya.png",
    "https://technicalhub.io/images/placements/jaya.png",
    "https://technicalhub.io/images/jp1.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        color: Colors.white12,
      ),
      Column(
        children: [
          Stack(clipBehavior: Clip.none, children: [
            Container(
              color: Colors.red,
              height: 300,
              width: double.infinity,
              child: Image.network('https://aec.edu.in/logos/placementteam.jpg',fit: BoxFit.fill,),
            ),
            Positioned(
                bottom: -30,
                left: 20,
                right: 20,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),gradient: LinearGradient(begin: Alignment.bottomCenter,
                  end: Alignment.topRight,colors: [Colors.yellow,Colors.blue]),
                      ),
                  height: 100,
                  //color: Colors.black,
                child: Center(child: Text('PLACEMENT',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),)),
          ]),
         // Container(color: Colors.red,height: 150,),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.white,
              child: CarouselSlider(
                items: Img.map((e) => Container(
                      child: Image.network(e),
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
