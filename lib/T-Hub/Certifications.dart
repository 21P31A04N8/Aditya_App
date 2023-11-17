import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:sizer/sizer.dart';

class Certifications extends StatefulWidget {
  const Certifications({super.key});

  @override
  State<Certifications> createState() => _CertificationsState();
}

class _CertificationsState extends State<Certifications> {
  @override

  List<Data> list = [
      Data('assets/Thub/certify/REDHAT.jpg', 'Redhat\nSystem\nAdministrator', '100+'),
      
      Data('assets/Thub/certify/UNITY PROG.jpg' , 'Unity Certified Programmer' , '10+'),
      Data('assets/Thub/certify/AWS.jpg' , 'AWS Cloud Practitioner' , '100+'),
      Data('assets/Thub/certify/AZURE AI.jpg' , 'Microsoft Azure AI Fundamentals' , '50+'),
      Data('assets/Thub/certify/GCC.jpg' , 'Google Cloud Engineer' , '100+'),
      Data('assets/Thub/certify/HTML.jpg' , 'IT Specialist HTML and CSS' , '600+'),
      Data('assets/Thub/certify/JAVA.jpg' , 'IT Specialist JAVA' , '800+'),
      Data('assets/Thub/certify/JS.jpg' , 'IT Specialist JAVA SCRIPT' , '200+'),
      Data('assets/Thub/certify/PYTHON.jpg' , 'IT Specialist PYTHON' , '2000+'),
      Data('assets/Thub/certify/PS.jpg' , 'Adobe Professional' , '10+'),
      Data('assets/Thub/certify/SALES.jpg' , 'Salesforce Administrator' , '10+'),
      Data('assets/Thub/certify/SECURITY.jpg', 'Comptia security+', '10+'),
    ];

    double change = 0;

  Future<void> _alert(String name , String count) async{
      await showDialog(
        context: context, builder: (context){
          return Dialog(
            insetAnimationCurve: Curves.bounceIn,
            insetAnimationDuration: Duration(seconds: 1),
            elevation: 10,
            backgroundColor: Colors.grey.shade900.withOpacity(0.7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal:14.w , vertical: 10),
              decoration: BoxDecoration(
              ),
              height: 25.h,
              width: 60.w,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Text(name , style: TextStyle(
                    fontSize: 23, fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                  
                  ),
                  SizedBox(height: 5,),
                  Text(count , style: TextStyle(
                    color: Colors.white , fontSize: 23 , fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 5,),
                  Text('certified' , style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                    
                  ),)
              
                ]),
              ),
            )
          );
        }
        
        
        );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        resizeToAvoidBottomInset: false,
        body: GridView.builder(
          itemCount: list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            ),
          itemBuilder: (context , ind){
           return InkWell(
             onTap: (){
                 _alert(list[ind].name! , list[ind].count!);
             },
             child: Container(
               height: 48.w,
               width: 48.w,
               color: Colors.grey.withOpacity(0.2),
               child: Image.asset(list[ind].img!),
             ),
           );
            
          
            }
          )
        
      ),
    );
  }
}

class Data{

  String? img;
  String? name;
  String? count;

  Data(String img , String name , String count){
      this.img = img;
      this.name = name;
      this.count = count;
  }
}
