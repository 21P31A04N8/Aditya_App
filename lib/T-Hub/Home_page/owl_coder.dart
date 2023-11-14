import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class owl_coder extends StatefulWidget {
  const owl_coder({super.key});

  @override
  State<owl_coder> createState() => _owl_coderState();
}

class _owl_coderState extends State<owl_coder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(5.w),
            child: Card(
              elevation: 30,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.green),
                height: 20.h,
                width: 90.w,
              ),
            ),
          ),
          Container(
            height: 20.h,
            width: 90.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.pink,
            ),
            child: Text('Owl Coder is an innovative training program of 60 days'),
          )
        ],
      )),
    );
  }
}
