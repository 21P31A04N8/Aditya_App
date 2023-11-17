import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';

class Thub_info extends StatefulWidget {
  const Thub_info({super.key});

  @override
  State<Thub_info> createState() => _Thub_infoState();
}

class _Thub_infoState extends State<Thub_info> {
  final String pn = "tel:+8343818181";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            elevation: 40,
            shadowColor: Colors.black,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              height: 30.h,
              width: double.infinity,
              child: Image.asset(
                'assets/Thub/babji_sir1.jpeg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: InkWell(
              onTap: () {
                final u1 = Uri.parse("tel://8343818181");
                launchUrl(u1);
              },
              child: Card(
                elevation: 30,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(90),
                        bottomRight: Radius.circular(90))),
                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(90),
                                bottomRight: Radius.circular(90))),
                        height: 8.h,
                        width: 75.w,
                        child: Center(
                          child: Text(
                            'Contact us on',
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.bold),
                          ),
                        )),
                    Container(
                      height: 8.h,
                      width: 20.w,
                      child: Center(
                        child: Icon(
                          Icons.call_sharp,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: InkWell(
              onTap: () {
                final u2 = Uri.parse(
                    'mailto:support@technicalhub.io.org?subject=Greetings&body=Hello%20World');
                launchUrl(u2);
              },
              child: Card(
                elevation: 30,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(90),
                        bottomRight: Radius.circular(90))),
                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(90),
                                bottomRight: Radius.circular(90))),
                        height: 8.h,
                        width: 75.w,
                        child: Center(
                          child: Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.bold),
                          ),
                        )),
                    Container(
                      height: 8.h,
                      width: 20.w,
                      child: Center(
                        child: Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: InkWell(
              onTap: () {
                final u3 = Uri.parse('https://technicalhub.io/index.php');
                launchUrl(u3);
              },
              child: Card(
                elevation: 30,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(90),
                        bottomRight: Radius.circular(90))),
                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(90),
                                bottomRight: Radius.circular(90))),
                        height: 8.h,
                        width: 75.w,
                        child: Center(
                          child: Text(
                            'Checkout our website',
                            style: TextStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.bold),
                          ),
                        )),
                    Container(
                      height: 5.h,
                      width: 15.w,
                      child: Center(
                        child: Icon(
                          Icons.laptop_windows_outlined,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: InkWell(
              onTap: () {
                final u4 =
                    Uri.parse('https://www.linkedin.com/company/technicalhub/');
                launchUrl(u4);
              },
              child: Card(
                elevation: 30,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(90),
                        bottomRight: Radius.circular(90))),
                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(90),
                                bottomRight: Radius.circular(90))),
                        height: 8.h,
                        width: 75.w,
                        child: Center(
                          child: Text(
                            'Follow us on',
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.bold),
                          ),
                        )),
                    Container(
                      height: 8.h,
                      width: 20.w,
                      child: Center(
                          child: Image.asset(
                              'assets/Thub/THub_home/linkedin.png')),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: InkWell(
              onTap: () {
                final u5 =
                    Uri.parse('https://www.instagram.com/technicalhubio/');
                launchUrl(u5);
              },
              child: Card(
                elevation: 30,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(90),
                        bottomRight: Radius.circular(90))),
                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(90),
                                bottomRight: Radius.circular(90))),
                        height: 8.h,
                        width: 75.w,
                        child: Center(
                          child: Text(
                            'Follow us on',
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.bold),
                          ),
                        )),
                    Container(
                      height: 8.h,
                      width: 20.w,
                      child: Center(
                          child: Image.asset(
                              'assets/Thub/THub_home/instagram.png')),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: InkWell(
              onTap: () {
                final u6 =
                    Uri.parse('https://www.youtube.com/@technicalhub8786');
                launchUrl(u6);
              },
              child: Card(
                elevation: 30,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(90),
                        bottomRight: Radius.circular(90))),
                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(90),
                                bottomRight: Radius.circular(90))),
                        height: 8.h,
                        width: 75.w,
                        child: Center(
                          child: Text(
                            'watch us on',
                            style: TextStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.bold),
                          ),
                        )),
                    Container(
                      height: 5.h,
                      width: 15.w,
                      child: Center(
                        child: Center(
                            child: Image.asset(
                                'assets/Thub/THub_home/youtube.png')),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
