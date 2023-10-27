import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myapplication/Courses/Diploma/Branches.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> with TickerProviderStateMixin{

  AnimationController? _animationController1;
  AnimationController? _animationController2;
  AnimationController? _animationController3;
  AnimationController? _animationController4;
  Animation? one;
  Animation? oned;
  Animation? two;
  Animation? twod;
  Animation? three;
  Animation? threed;
  Animation? four;
  Animation? fourd;

  AnimationController? _animationController5;
  AnimationController? _animationController6;
  AnimationController? _animationController7;
  AnimationController? _animationController8;
  Animation? one5;
  Animation? oned5;
  Animation? two6;
  Animation? twod6;
  Animation? three7;
  Animation? threed7;
  Animation? four8;
  Animation? fourd8;

  double s = 0;
  bool check1 =  false;
  bool check2 =  false;
  bool check3 =  false;
  bool check4 =  false;

  double end = 250;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController1 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    _animationController2 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    _animationController3 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    _animationController4 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));



    oned = Tween<double>(begin: -0.3, end: 0).animate(CurvedAnimation(parent: _animationController1!,
        curve: Interval(0.5,1,curve: Curves.decelerate)
    ));

    two = Tween<double>(begin: 0, end: 250).animate(CurvedAnimation(parent: _animationController2!,

        curve: Interval(
            0,0.3,curve: Curves.decelerate
        )
    ));

    twod = Tween<double>(begin: -0.3, end: 0).animate(CurvedAnimation(parent: _animationController2!,
        curve: Interval(
            0.3,0.6,curve: Curves.decelerate
        )
    ));

    three = Tween<double>(begin: 0, end: 250).animate(CurvedAnimation(parent: _animationController3!,
        curve: Interval(0,0.5,curve: Curves.decelerate)
    ));

    threed = Tween<double>(begin: -0.3, end: 0).animate(CurvedAnimation(parent: _animationController3!,
        curve: Interval(0.5,1,curve: Curves.decelerate)
    ));

    four = Tween<double>(begin: 0, end: 250).animate(CurvedAnimation(parent: _animationController4!,
        curve: Interval(0,0.5,curve: Curves.decelerate)
    ));

    fourd = Tween<double>(begin: -0.3, end: 0).animate(CurvedAnimation(parent: _animationController4!,
        curve: Interval(0.5,1,curve: Curves.decelerate)
    ));



    _animationController1!.addListener(() {
      setState(() {

      });
    });
    _animationController2!.addListener(() {
      setState(() {

      });
    });
    _animationController3!.addListener(() {
      setState(() {

      });
    });
    _animationController4!.addListener(() {
      setState(() {

      });
    });

    _animationController5 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    _animationController6 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    _animationController7 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    _animationController8 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));

    one5 = Tween<double>(begin: 50, end: 250).animate(CurvedAnimation(parent: _animationController5!,
        curve: Interval(0,0.5,curve: Curves.decelerate)
    ));

    oned5 = Tween<double>(begin: 0.3, end: 0).animate(CurvedAnimation(parent: _animationController5!,
        curve: Interval(0.5,1,curve: Curves.decelerate)
    ));

    two6 = Tween<double>(begin: 50, end: 250).animate(CurvedAnimation(parent: _animationController6!,

        curve: Interval(
            0,0.3,curve: Curves.decelerate
        )
    ));

    twod6 = Tween<double>(begin: 0.3, end: 0).animate(CurvedAnimation(parent: _animationController6!,
        curve: Interval(
            0.3,0.6,curve: Curves.decelerate
        )
    ));

    three7 = Tween<double>(begin: 50, end: 250).animate(CurvedAnimation(parent: _animationController7!,
        curve: Interval(0,0.5,curve: Curves.decelerate)
    ));

    threed7 = Tween<double>(begin: 0.3, end: 0).animate(CurvedAnimation(parent: _animationController7!,
        curve: Interval(0.5,1,curve: Curves.decelerate)
    ));

    four8 = Tween<double>(begin: 0, end: 250).animate(CurvedAnimation(parent: _animationController8!,
        curve: Interval(0,0.5,curve: Curves.decelerate)
    ));

    fourd8 = Tween<double>(begin: 0.3, end: 0).animate(CurvedAnimation(parent: _animationController8!,
        curve: Interval(0.5,1,curve: Curves.decelerate)
    ));



    _animationController5!.addListener(() {
      setState(() {

      });
    });
    _animationController6!.addListener(() {
      setState(() {

      });
    });
    _animationController7!.addListener(() {
      setState(() {

      });
    });
    _animationController8!.addListener(() {
      setState(() {

      });
    });

  }

  @override
  Widget build(BuildContext context) {

    List<String> img = ['https://polytechnic.aec.edu.in/thubzone/images/banners/165.jpg',
      'https://polytechnic.aec.edu.in/thubzone/images/banners/158.jpg',
      'https://polytechnic.aec.edu.in/thubzone/images/banners/157.jpg',
      'https://polytechnic.aec.edu.in/thubzone/images/banners/160.jpg',
      'https://polytechnic.aec.edu.in/thubzone/images/banners/152.jpg',
      'https://polytechnic.aec.edu.in/thubzone/images/banners/148.jpg'
    ];

    Size s= MediaQuery.of(context).size;
    end = (s.width/2)+50;
    one = Tween<double>(begin: 0, end: end).animate(CurvedAnimation(parent: _animationController1!,
        curve: Interval(0,0.5,curve: Curves.decelerate)
    ));

    // timeDilation: 1.0;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            CarouselSlider.builder(
              itemCount: img.length,
              itemBuilder: (context  , i ,j){
                return Container(
                  color: Colors.greenAccent,
                  child: Image.network(img[i]),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity - 50,
                );
              },
              options: CarouselOptions(
                  viewportFraction: 0.7,
                  autoPlay: true

              ),
            ),
            InkWell(
              onTap: (){
                _animationController2!.reset();
                _animationController3!.reset();
                _animationController4!.reset();
                _animationController1!.reset();
              },
              child: Container(
                // margin: EdgeInsets.only(top: 100),
                padding: EdgeInsets.only(left: 20),
                width: double.infinity,
                height: 270 + ((s.width/2) + 100),
                // color: Colors.black,
                child: Stack(
                  // alignment: Alignment.centerRight,
                  children: [
                    // Positioned(
                    //   bottom: one!.value,
                    //   child: InkWell(
                    //     onTap: (){
                    //       _animationController2!.reset();
                    //       _animationController3!.reset();
                    //       _animationController4!.reset();
                    //       _animationController1!.forward();
                    //     },
                    //     child: Transform(
                    //      transform: Matrix4.skewY(oned!.value),
                    //
                    //       child: Card(
                    //         elevation: 20,
                    //         shadowColor: Colors.black,
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(40)
                    //         ),
                    //         child: Container(
                    //           padding: EdgeInsets.all(8),
                    //           height: 300,
                    //           width: 200,
                    //            decoration: BoxDecoration(
                    //              borderRadius: BorderRadius.circular(40),
                    //                color: Colors.blue.shade400,
                    //                border: Border.all(color: Colors.blue.shade900,width: 2)
                    //
                    //            ),
                    //           child: Column(
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               SizedBox(height: 20,),
                    //               Row(
                    //                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //                 children: [
                    //                   Text('MEC',
                    //                   style: TextStyle(
                    //                     fontSize: 25,
                    //                     fontWeight: FontWeight.bold,
                    //                     // color: Colors.white
                    //                   ),),
                    //                   Card(
                    //                     shape: RoundedRectangleBorder(
                    //                       borderRadius: BorderRadius.circular(360)
                    //                     ),
                    //                     elevation: 10,
                    //                     child: Container(
                    //
                    //                       height: 60,
                    //                       width: 60,
                    //                       decoration: BoxDecoration(
                    //                           borderRadius: BorderRadius.circular(360),
                    //                           border: Border.all(
                    //                             color: Colors.black
                    //                           ),
                    //                           color: Colors.white
                    //                       ),
                    //                       child: Center(
                    //                         child: IconButton(
                    //                           onPressed: (){
                    //
                    //                           },
                    //
                    //                           icon: Icon(Icons.arrow_forward),
                    //                         ),
                    //                       ),
                    //                     ),
                    //                   )
                    //                 ],
                    //               ),
                    //               SizedBox(height: 20,),
                    //               Container(
                    //                 // margin: EdgeInsets.only(left: 50),
                    //                 height: 150,
                    //                 width: 190,
                    //                 child: Image.network(
                    //                     fit:BoxFit.cover,
                    //                     'https://img.freepik.com/free-vector/cogs-gears-teamwork-concept-symbol_98292-4444.jpg?w=740&t=st=1698203435~exp=1698204035~hmac=02aff0bbeef224953549551ffe5f6fc4f9df89358ee1a251396fcd04639b6b2a'),
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    Positioned(
                      // left: 65,
                      bottom: two!.value,
                      child: GestureDetector(
                        onTap: (){
                          _animationController1!.reset();
                          _animationController3!.reset();
                          _animationController4!.reset();
                          _animationController5!.reset();
                          _animationController6!.reset();
                          _animationController7!.reset();
                          _animationController8!.reset();
                          _animationController2!.forward();

                        },


                        child: Transform(
                          transform: Matrix4.skewY(twod!.value),
                           origin: Offset(100,100),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              height: (s.width/2)+100,
                              width: (s.width/2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.yellowAccent,
                                  border:Border.all(color: Colors.yellow.shade900,
                                      width: 2

                                  )
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('CIV',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(360)
                                        ),
                                        elevation: 10,
                                        child: Container(

                                          height: (s.width)/8,
                                          width: (s.width)/8,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(360),
                                              border: Border.all(
                                                  color: Colors.black
                                              ),
                                              color: Colors.white
                                          ),
                                          child: Center(
                                            child: IconButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => branch_det(bgcol: Colors.yellowAccent.shade400, branch: 'CIV', branchimg: 'https://img.freepik.com/free-vector/flat-engineering-construction-illustrated_23-2148892788.jpg?w=1060&t=st=1698203990~exp=1698204590~hmac=9cd818aeeaa9b9635b70492b52d12557e206134b8f359f966351c2beeca2f85f')));

                                              },

                                              icon: Icon(Icons.arrow_forward),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    // margin: EdgeInsets.only(left: 50),
                                    height: ((s.width/2)+100)/2,
                                    width: (s.width/2)-10,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.network(
                                          fit:BoxFit.cover,
                                          'https://img.freepik.com/free-vector/flat-engineering-construction-illustrated_23-2148892788.jpg?w=1060&t=st=1698203990~exp=1698204590~hmac=9cd818aeeaa9b9635b70492b52d12557e206134b8f359f966351c2beeca2f85f'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      bottom: three!.value,
                      // bottom: 10,
                      child: InkWell(
                        onTap: (){
                          _animationController1!.reset();
                          _animationController2!.reset();
                          _animationController4!.reset();
                          _animationController5!.reset();
                          _animationController6!.reset();
                          _animationController7!.reset();
                          _animationController8!.reset();
                          _animationController3!.forward();

                        },
                        child: Transform(
                          transform: Matrix4.skewY(threed!.value),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              height: (s.width/2)+100,
                              width: (s.width/2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.redAccent.shade200,
                                  border: Border.all(color: Colors.black ,width: 2)
                              ),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('ECE',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      Card(
                                        elevation:20,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(360)
                                        ),

                                        child: Container(

                                          height: (s.width)/8,
                                          width: (s.width)/8,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(360),
                                              border: Border.all(
                                                  color: Colors.black
                                              ),
                                              color: Colors.white
                                          ),
                                          child: Center(
                                            child: IconButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => branch_det(bgcol: Colors.orange.shade400, branch: 'ECE' ,  branchimg: 'https://img.freepik.com/premium-vector/electronic-manufacturing-components-circuit-engineering-design-coordinate-symbols-concept-isometric_255805-387.jpg?w=900')));
                                              },

                                              icon: Icon(Icons.arrow_forward),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    // margin: EdgeInsets.only(left: 50),
                                    height: ((s.width/2)+100)/2,
                                    width: (s.width/2)-10,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.network(
                                          fit:BoxFit.cover,
                                          'https://img.freepik.com/premium-vector/electronic-manufacturing-components-circuit-engineering-design-coordinate-symbols-concept-isometric_255805-387.jpg?w=900'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 120,
                      bottom: four!.value,
                      child: InkWell(
                        onTap: (){
                          _animationController1!.reset();
                          _animationController2!.reset();
                          _animationController3!.reset();
                          _animationController5!.reset();
                          _animationController6!.reset();
                          _animationController7!.reset();
                          _animationController8!.reset();
                          _animationController4!.forward();

                        },
                        child: Transform(
                          transform: Matrix4.skewY(fourd!.value),
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              height: (s.width/2)+100,
                              width: (s.width/2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),

                                  border: Border.all(color: Colors.blue.shade900,width: 2),
                                  color: Colors.blueAccent.shade200
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('CSE',
                                        style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(360)
                                        ),
                                        elevation: 10,
                                        child: Container(

                                          height: (s.width)/8,
                                          width: (s.width)/8,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(360),
                                              border: Border.all(
                                                  color: Colors.black
                                              ),
                                              color: Colors.white
                                          ),
                                          child: Center(
                                            child: IconButton(
                                                onPressed: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>branch_det(bgcol: Colors.blueAccent.shade200, branch: 'CSE', branchimg: 'https://img.freepik.com/free-vector/coding-round-composition_1284-40752.jpg?w=740&t=st=1698204563~exp=1698205163~hmac=441edcadac3d45ea95daf1095daae584b7d1d5460fa664c8398271c5d8e5fc91')));
                                                },

                                                icon: Icon(Icons.arrow_forward , )
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    // margin: EdgeInsets.only(left: 50),
                                    height: ((s.width/2)+100)/2,
                                    width: (s.width/2)-10,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.network(
                                          fit:BoxFit.cover,
                                          'https://img.freepik.com/free-vector/coding-round-composition_1284-40752.jpg?w=740&t=st=1698204563~exp=1698205163~hmac=441edcadac3d45ea95daf1095daae584b7d1d5460fa664c8398271c5d8e5fc91'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            InkWell(
              onTap: (){
                _animationController1!.reset();
                _animationController2!.reset();
                _animationController3!.reset();
                _animationController4!.reset();
                _animationController5!.reset();
                _animationController6!.reset();
                _animationController7!.reset();
                _animationController8!.reset();
              },
              child: Container(
                // margin: EdgeInsets.only(top: 100),
                padding: EdgeInsets.only(right: 20),
                width: double.infinity,
                height: 270 + ((s.width/2) + 100),
                // color: Colors.black,
                child: Stack(
                  // alignment: Alignment.centerRight,
                  children: [
                    Positioned(
                      right: 0,
                      bottom: one5!.value,
                      child: InkWell(
                        onTap: (){
                          _animationController1!.reset();
                          _animationController2!.reset();
                          _animationController3!.reset();
                          _animationController4!.reset();
                          _animationController6!.reset();
                          _animationController7!.reset();
                          _animationController8!.reset();
                          _animationController5!.forward();
                        },
                        child: Transform(
                          transform: Matrix4.skewY(oned5!.value),

                          child: Card(
                            elevation: 20,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal:12),
                              height: (s.width/2)+100,
                              width: (s.width/2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.orange.shade400,
                                  border: Border.all(color: Colors.orange.shade900,width: 2)

                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(360)
                                        ),
                                        elevation: 10,
                                        child: Container(

                                          height: (s.width)/8,
                                          width: (s.width)/8,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(360),
                                              border: Border.all(
                                                  color: Colors.black
                                              ),
                                              color: Colors.white
                                          ),
                                          child: Center(
                                            child: IconButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => branch_det(bgcol: Colors.brown.shade300, branch: 'MEC', branchimg: 'https://img.freepik.com/free-vector/cogs-gears-teamwork-concept-symbol_98292-4444.jpg?w=740&t=st=1698203435~exp=1698204035~hmac=02aff0bbeef224953549551ffe5f6fc4f9df89358ee1a251396fcd04639b6b2a')));

                                              },

                                              icon: Icon(Icons.arrow_forward),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text('MEC',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          // color: Colors.white
                                        ),),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    // margin: EdgeInsets.only(left: 50),
                                    height: ((s.width/2)+100)/2,
                                    width: (s.width/2)-10,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.network(
                                          fit:BoxFit.cover,
                                          'https://img.freepik.com/free-vector/cogs-gears-teamwork-concept-symbol_98292-4444.jpg?w=740&t=st=1698203435~exp=1698204035~hmac=02aff0bbeef224953549551ffe5f6fc4f9df89358ee1a251396fcd04639b6b2a'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //if (_animationController2 != null && twod != null)
                    Positioned(
                      right: 75,
                      bottom: two6!.value,
                      child: GestureDetector(
                        onTap: (){
                          _animationController1!.reset();
                          _animationController2!.reset();
                          _animationController3!.reset();
                          _animationController4!.reset();
                          _animationController5!.reset();
                          _animationController7!.reset();
                          _animationController8!.reset();
                          _animationController6!.forward();

                        },


                        child: Transform(
                          transform: Matrix4.skewY(twod6!.value),
                          // origin: Offset(100,100),
                          child: Card(

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              height: (s.width/2)+100,
                              width: (s.width/2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.greenAccent,
                                  border:Border.all(color: Colors.green.shade900,
                                      width: 2

                                  )
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(360)
                                        ),
                                        elevation: 10,
                                        child: Container(

                                          height: (s.width)/8,
                                          width: (s.width)/8,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(360),
                                              border: Border.all(
                                                  color: Colors.black
                                              ),
                                              color: Colors.white
                                          ),
                                          child: Center(
                                            child: IconButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => branch_det(bgcol: Colors.greenAccent, branch: 'EEE', branchimg: 'https://img.freepik.com/free-vector/technicians-repairing-generator-transformer-flat-illustration-cartoon-electric-workers-making-power-distribution-line_74855-14173.jpg?w=900&t=st=1698229474~exp=1698230074~hmac=4ddf5fd9fe4483a1d4e96c67cc9a7fbdc741451688df2759d2e55e54e5d8d522')));

                                              },

                                              icon: Icon(Icons.arrow_forward),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text('EEE',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    // margin: EdgeInsets.only(left: 50),
                                    height: ((s.width/2)+100)/2,
                                    width: (s.width/2)-10,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.network(
                                          fit:BoxFit.cover,
                                          'https://img.freepik.com/free-vector/technicians-repairing-generator-transformer-flat-illustration-cartoon-electric-workers-making-power-distribution-line_74855-14173.jpg?w=900&t=st=1698229474~exp=1698230074~hmac=4ddf5fd9fe4483a1d4e96c67cc9a7fbdc741451688df2759d2e55e54e5d8d522'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 140,
                      bottom: three7!.value,
                      // bottom: 10,
                      child: InkWell(
                        onTap: (){
                          _animationController1!.reset();
                          _animationController2!.reset();
                          _animationController3!.reset();
                          _animationController4!.reset();
                          _animationController5!.reset();
                          _animationController6!.reset();
                          _animationController8!.reset();
                          _animationController7!.forward();

                        },
                        child: Transform(
                          transform: Matrix4.skewY(threed7!.value),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)
                            ),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              height: (s.width/2)+100,
                              width: (s.width/2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.deepPurple[300],
                                  border: Border.all(color: Colors.deepPurple.shade900,width: 2)
                              ),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(360)
                                        ),
                                        elevation: 10,
                                        child: Container(

                                          height: (s.width)/8,
                                          width: (s.width)/8,
                                          // padding: EdgeInsets.symmetric(horizontal: 12),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(360),
                                              border: Border.all(
                                                  color: Colors.black
                                              ),
                                              color: Colors.white
                                          ),
                                          child: Center(
                                            child: IconButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => branch_det(bgcol: Colors.deepPurple.shade300, branch: 'CSN', branchimg: 'https://img.freepik.com/free-vector/cloud-services-isometric-composition-with-big-cloud-computing-infrastructure-elements-connected-with-dashed-lines-vector-illustration_1284-30495.jpg?w=826&t=st=1698229558~exp=1698230158~hmac=d4be03ab077e3ba28282468dc0a133301120e006d17c7c44ed52f1638edd9220')));

                                              },

                                              icon: Icon(Icons.arrow_forward),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text('CSN',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    // margin: EdgeInsets.only(left: 50),
                                    height: ((s.width/2)+100)/2,
                                    width: (s.width/2)-10,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.network(
                                          fit:BoxFit.cover,
                                          'https://img.freepik.com/free-vector/cloud-services-isometric-composition-with-big-cloud-computing-infrastructure-elements-connected-with-dashed-lines-vector-illustration_1284-30495.jpg?w=826&t=st=1698229558~exp=1698230158~hmac=d4be03ab077e3ba28282468dc0a133301120e006d17c7c44ed52f1638edd9220'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Positioned(
                    //   right: 180,
                    //   bottom: four8!.value,
                    //   child: InkWell(
                    //     onTap: (){
                    //       _animationController1!.reset();
                    //       _animationController2!.reset();
                    //       _animationController3!.reset();
                    //       _animationController4!.reset();
                    //       _animationController5!.reset();
                    //       _animationController6!.reset();
                    //       _animationController7!.reset();
                    //       _animationController8!.forward();
                    //
                    //     },
                    //     child: Transform(
                    //       transform: Matrix4.skewY(fourd8!.value),
                    //       child: Card(
                    //         elevation: 10,
                    //         shape: RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(40)
                    //         ),
                    //         child: Container(
                    //           padding: EdgeInsets.all(8),
                    //           height: 300,
                    //           width: 200,
                    //           decoration: BoxDecoration(
                    //               borderRadius: BorderRadius.circular(40),
                    //
                    //               border: Border.all(color: Colors.green.shade900,width: 2),
                    //               color: Colors.greenAccent
                    //           ),
                    //           child: Column(
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               SizedBox(height: 20,),
                    //               Row(
                    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //                 children: [
                    //                   Text('CSE',
                    //                     style: TextStyle(
                    //                       fontSize: 28,
                    //                       fontWeight: FontWeight.bold,
                    //                     ),),
                    //                   Card(
                    //                     shape: RoundedRectangleBorder(
                    //                         borderRadius: BorderRadius.circular(360)
                    //                     ),
                    //                     elevation: 10,
                    //                     child: Container(
                    //
                    //                       height: 60,
                    //                       width: 60,
                    //                       decoration: BoxDecoration(
                    //                           borderRadius: BorderRadius.circular(360),
                    //                           border: Border.all(
                    //                               color: Colors.black
                    //                           ),
                    //                           color: Colors.white
                    //                       ),
                    //                       child: Center(
                    //                         child: IconButton(
                    //                           onPressed: (){
                    //
                    //                           },
                    //
                    //                           icon: Icon(Icons.arrow_forward),
                    //                         ),
                    //                       ),
                    //                     ),
                    //                   )
                    //                 ],
                    //               ),
                    //               SizedBox(height: 20,),
                    //               Container(
                    //                 // margin: EdgeInsets.only(left: 50),
                    //                 height: 150,
                    //                 width: 190,
                    //                 child: Image.network(
                    //                     fit:BoxFit.cover,
                    //                     'https://img.freepik.com/free-vector/coding-round-composition_1284-40752.jpg?w=740&t=st=1698204563~exp=1698205163~hmac=441edcadac3d45ea95daf1095daae584b7d1d5460fa664c8398271c5d8e5fc91'),
                    //               )
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
            SizedBox(height:100),
            Container(
              height: 100,
              width: 300,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
