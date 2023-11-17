import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Event_Img extends StatefulWidget {
  final String event;
  const Event_Img({
    required this.event,
    super.key});
  
  @override
  State<Event_Img> createState() => _Event_ImgState();
}

class _Event_ImgState extends State<Event_Img> {

  List<String> ani = ["Best.png" , "bestdeveloper.png" ,"besttechcoach.png" , "beyondthecod.jpg" , "emergingtech.jpg"];
  List<String> grow = ["dance.jpg" , "dance2.jpg"];
  List<String> pgday = ["pg1.jpg" , "pg2.jpg" ,"pg3.jpg" ,"pg4.jpg"];
  List<String> skill = ["vice.jpg" , "C_1.png" , "C_2.jpeg" , "C_3.jpeg" , "babjisir.jpg"];

  Map<String , List>  m = {
    "skill" : ["vice.jpg" , "C_1.png" , "C_2.jpeg" , "C_3.jpeg" , "babjisir.jpg"],
    "grow" :  ["dance.JPG" , "dance2.JPG"],
    "pgday" : ["pg1.jpg" , "pg2.jpg" ,"pg3.png" ,"pg4.jpg"],
    "ani" : ["Best.png" , "bestdeveloper.png" ,"besttechcoach.JPG" , "beyondthecod.JPG" , "emergingtech.JPG" , "prasanth.jpg"]
    };


    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: m[widget.event]!.length,
        itemBuilder: (context , ind){
          return Container(
            margin: EdgeInsets.symmetric(vertical: 20 , horizontal: 25),
            height: (widget.event == "ani" || widget.event == "grow") ? 30.h :40.h,
            width: 80.w,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade300
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(fit: BoxFit.fill,"assets/Thub/events/${widget.event}/${m[widget.event]![ind]}")));
        }
        ),
    );
  }
}