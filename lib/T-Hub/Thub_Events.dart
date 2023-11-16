import 'package:flutter/material.dart';
import 'package:myapplication/T-Hub/Event_img.dart';

class Thub_Events extends StatefulWidget {
  const Thub_Events({super.key});

  @override
  State<Thub_Events> createState() => _Thub_EventsState();
}

class _Thub_EventsState extends State<Thub_Events> with TickerProviderStateMixin{
  AnimationController? _controller_1;
  AnimationController? _controller_2;
  AnimationController? _controller_3;
  AnimationController? _controller_4;
  Animation? first;
  Animation? second;
  Animation? third;
  Animation? four;

  double _top  = 20;
  double _left  = 30;
  double _right  = 30;
  double _top2 = 20;

  double _top_2  = 20;
  double _left_2  = 30;
  double _right_2  = 30;
  double _top2_2 = 20;

  double _top_3  = 20;
  double _left_3  = 30;
  double _right_3  = 30;
  double _top2_3 = 20;

  double _top_4 = 20;
  double _left_4   = 30;
  double _right_4  = 30;
  double _top2_4 = 20;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller_1 = AnimationController(vsync: this , duration: Duration(milliseconds: 300));
    _controller_2 = AnimationController(vsync: this , duration: Duration(milliseconds: 300));
    _controller_3 = AnimationController(vsync: this , duration: Duration(milliseconds: 300));
    _controller_4 = AnimationController(vsync: this , duration: Duration(milliseconds: 300));
    first = Tween<double>(begin: 20 , end: 120).animate(_controller_1!);
    second = Tween<double>(begin: 20 , end: 120).animate(_controller_2!);
    third = Tween<double>(begin: 20 , end: 120).animate(_controller_3!);
    four = Tween<double>(begin: 20 , end: 120).animate(_controller_4!);

    _controller_1!.addListener(() {

      setState(() {

      });
    });

    _controller_2!.addListener(() {

      setState(() {

      });
    });

    _controller_3!.addListener(() {

      setState(() {

      });
    });

    _controller_4!.addListener(() {

      setState(() {

      });
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 50),
          Text('EVENTS' , style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold
          ),),
          Stack(
              children:
              [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Event_Img(event: "skill")));
                  },
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: _left , right: _right , top: first!.value),
                    decoration: BoxDecoration(
                        color: Colors.lightBlue.shade200,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.blue.shade900)
                    ),
                    padding: EdgeInsets.only(top: 80 , left: 20 , right: 20, bottom: 10),
                    child: Center(child: Text(
                        style:TextStyle(
                          fontSize: 15,
                        ),
                        textAlign:TextAlign.justify,
                        "Skiller's day is Conducted to admire the skill of the students in different technologies like coding and RPA.On the ay of Skiller's day Technical Hub awarded trainees who won te mid year coding contest and also awarded the trainees who won the top 5 prizes in RPA.")
                    ),
                  ),
                ),

                // Positioned(
                //     bottom: -25,
                //     left: 225,
                //     child: Container(
                //       height: 50,
                //       width: 50,
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(360),
                //           color: Colors.green
                //       ),
                //     )),

                InkWell(
                  onTap: (){

                    _top_2 = 20;
                    _top2_2 = 20;
                    _left_2 = 30;
                    _right_2 = 30;

                    _top_3 = 20;
                    _top2_3 = 20;
                    _left_3 = 30;
                    _right_3 = 30;


                    _top_4 = 20;
                    _top2_4 = 20;
                    _left_4 = 30;
                    _right_4 = 30;

                    _top = (_top == 120 ) ? 20 :120;
                    _left = (_left == 30) ? 10 : 30;
                    _right = (_right == 30) ? 10 : 30;
                    _top2 = (_top2 == 20) ? 0 : 20;

                    setState(() {

                      _controller_2!.reverse();
                      _controller_3!.reverse();
                      _controller_4!.reverse();

                      (_top2 == 0) ? _controller_1!.forward() : _controller_1!.reverse();
                    });
                  },

                  child: Container(
                    height: 200,
                    margin: EdgeInsets.only(left: 30 , right: 30 , top: _top2  ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        // color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(fit:BoxFit.fill ,"assets/Thub/events/skday.png")),
                  ),
                ),
              ]
          ),

          SizedBox(height: 30,),

          Stack(
              children:
              [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Event_Img(event: "pgday")));
                  },
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: _left_2 , right: _right_2 , top: second!.value),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.red , width: 2)
                    ),
                    padding: EdgeInsets.only(top: 100 , left: 20 , right: 20, bottom: 10),
                
                    child: Center(child: Text(
                        style:TextStyle(
                          fontSize: 15,
                        ),
                        textAlign:TextAlign.justify,
                        "Programming day is conducted on 13th September. On that day Technical hub conducted many activities like coding , typing test , cloud etc.. Awards was distributes to the winners on the Programmer's day.")
                    ),
                  ),
                ),

                InkWell(
                  onTap: (){
                    _top = 20;
                    _top2 = 20;
                    _left = 30;
                    _right = 30;

                    _top_3 = 20;
                    _top2_3 = 20;
                    _left_3 = 30;
                    _right_3 = 30;


                    _top_4 = 20;
                    _top2_4 = 20;
                    _left_4 = 30;
                    _right_4 = 30;

                    _top_2 = (_top_2 == 100 ) ? 20 :100;
                    _left_2 = (_left_2 == 30) ? 10 : 30;
                    _right_2 = (_right_2 == 30) ? 10 : 30;
                    _top2_2 = (_top2_2 == 20) ? 0 : 20;

                    setState(() {
                      _controller_1!.reverse();
                      _controller_3!.reverse();
                      _controller_4!.reverse();

                      (_top2_2 == 0) ? _controller_2!.forward() : _controller_2!.reverse();
                    });
                  },
                  child: Container(
                    height: 200,
                    margin: EdgeInsets.only(left: 30 , right: 30 , top: _top2_2  ),
                    width: double.infinity ,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(fit:BoxFit.fill,"assets/Thub/events/Pday.png")),
                  ),
                ),
              ]
          ),

          SizedBox(height: 30,),

          Stack(
              children:
              [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Event_Img(event: "grow")));
                  },
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: _left_3 , right: _right_3 , top: third!.value),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[200],
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.deepPurple.shade900 , width: 2)
                    ),
                    padding: EdgeInsets.only(top: 100 , left: 20 , right: 20, bottom: 10),
                
                    child: Center(child: Text(
                        style:TextStyle(
                          fontSize: 15,
                        ),
                        textAlign:TextAlign.justify,
                        "Grow is an exceptional initiative led by Technical hub, focused on organizing exclusive trainings and forming a global female coding community.")
                    ),
                  ),
                ),

                InkWell(
                  onTap: (){

                    _top = 20;
                    _top2 = 20;
                    _left = 30;
                    _right = 30;

                    _top_2 = 20;
                    _top2_2 = 20;
                    _left_2 = 30;
                    _right_2 = 30;


                    _top_4 = 20;
                    _top2_4 = 20;
                    _left_4 = 30;
                    _right_4 = 30;

                    _top_3 = (_top_3 == 100 ) ? 20 :100;
                    _left_3 = (_left_3 == 30) ? 10 : 30;
                    _right_3 = (_right_3 == 30) ? 10 : 30;
                    _top2_3 = (_top2_3 == 20) ? 0 : 20;

                    setState(() {
                      _controller_1!.reverse();
                      _controller_2!.reverse();
                      _controller_4!.reverse();

                      (_top2_3 == 0) ? _controller_3!.forward() : _controller_3!.reverse();
                    });
                  },
                  child: Container(
                    height: 200,
                    margin: EdgeInsets.only(left: 30 , right: 30 , top: _top2_3  ),
                    width: double.infinity ,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child:  ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(fit:BoxFit.fill,"assets/Thub/events/Grow.png")),
                  ),
                ),



              ]
          ),

          SizedBox(height: 30,),

          Stack(
              children:
              [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Event_Img(event: "ani")));
                  },
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: _left_4 , right: _right_4 , top: four!.value),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 115, 235, 177),
                      border: Border.all(color: Colors.green.shade900 , width: 2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.only(top: 100 , left: 20 , right: 20, bottom: 10),
                
                    child: Center(child: Text(
                        style:TextStyle(
                          fontSize: 15,
                        ),
                        textAlign:TextAlign.justify,
                        "Seven years, Technical-hub has been a innovation, progress , and excellence in the field of Computer Technology, a institution known for it's cutting-edge research on fields such as coding , web development etc..")
                    ),
                  ),
                ),

                InkWell(
                  onTap: (){

                    _top = 20;
                    _top2 = 20;
                    _left = 30;
                    _right = 30;

                    _top_2 = 20;
                    _top2_2 = 20;
                    _left_2 = 30;
                    _right_2 = 30;


                    _top_3 = 20;
                    _top2_3 = 20;
                    _left_3 = 30;
                    _right_3 = 30;

                    _top_4 = (_top_4 == 100 ) ? 20 :100;
                    _left_4 = (_left_4 == 30) ? 10 : 30;
                    _right_4 = (_right_4 == 30) ? 10 : 30;
                    _top2_4 = (_top2_4 == 20) ? 0 : 20;

                    setState(() {
                      _controller_1!.reverse();
                      _controller_2!.reverse();
                      _controller_3!.reverse();

                      (_top2_4 == 0) ? _controller_4!.forward() : _controller_4!.reverse();
                    });
                  },
                  child: Container(
                    height: 200,
                    margin: EdgeInsets.only(left: 30 , right: 30 , top: _top2_4  ),
                    width: double.infinity ,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child:  ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(fit:BoxFit.fill,"assets/Thub/events/7thanv.png")),
                  ),
                ),



              ]
          ),

          SizedBox(height: 80,),
        ]),
      ),
    );
  }
}
