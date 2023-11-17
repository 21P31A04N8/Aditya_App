import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact_us extends StatefulWidget {
  const Contact_us({super.key});

  @override
  State<Contact_us> createState() => _Contact_usState();
}

class _Contact_usState extends State<Contact_us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 56, 5, 71),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            height: 40.h,
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                child: Image.asset(
                  'assets/aditya/drone.png',
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 6.h,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10.w),
                child: InkWell(
                  onTap: () {
                    final u1 = Uri.parse("tel://9949876662");
                    launchUrl(u1);
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    elevation: 30,
                    shadowColor: Colors.purpleAccent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 213, 180, 223),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      height: 17.w,
                      width: 17.w,
                      child: Center(
                        child: Icon(Icons.call),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: InkWell(
                  onTap: () {
                    final u2 = Uri.parse(
                        'mailto:kumarnrv@aditya.ac.in.org?subject=Greetings&body=Hello%20World');
                    launchUrl(u2);
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    elevation: 30,
                    shadowColor: Colors.purpleAccent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 213, 180, 223),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      height: 17.w,
                      width: 17.w,
                      child: Center(
                        child: Icon(Icons.mail_outline),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    final u3 = Uri.parse('https://aditya.ac.in/index.php');
                    launchUrl(u3);
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    elevation: 30,
                    shadowColor: Colors.purpleAccent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 213, 180, 223),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      height: 17.w,
                      width: 17.w,
                      child: Icon(Icons.desktop_mac),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10.w),
                child: InkWell(
                  onTap: () {
                    final u4 = Uri.parse(
                        'https://www.linkedin.com/school/adityaedugroup/');
                    launchUrl(u4);
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    elevation: 30,
                    shadowColor: Colors.purpleAccent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 213, 180, 223),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      height: 17.w,
                      width: 17.w,
                      child: Center(
                        child:
                            Image.asset('assets/Thub/THub_home/linkedin.png'),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: InkWell(
                  onTap: () {
                    final u5 = Uri.parse(
                        'https://www.instagram.com/aditya_engg_colleges/');
                    launchUrl(u5);
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    elevation: 30,
                    shadowColor: Colors.purpleAccent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 213, 180, 223),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      height: 17.w,
                      width: 17.w,
                      child: Center(
                        child:
                            Image.asset('assets/Thub/THub_home/instagram.png'),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    final u6 =
                        Uri.parse('https://www.youtube.com/@AdityaEduGrp');
                    launchUrl(u6);
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    elevation: 30,
                    shadowColor: Colors.purpleAccent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 213, 180, 223),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      height: 17.w,
                      width: 17.w,
                      child: Center(
                        child: Image.asset("assets/Thub/THub_home/youtube.png"),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
