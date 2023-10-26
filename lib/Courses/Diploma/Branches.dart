
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class branch_det extends StatefulWidget {
  final Color bgcol;
  final String branch;
  final String branchimg;

  const branch_det({
    required this.bgcol,
    required this.branch,
    required this.branchimg,
    super.key
  });

  @override
  State<branch_det> createState() => _branch_detState();
}

class _branch_detState extends State<branch_det> {
  @override
  int cur_page = 0;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: widget.bgcol,
        body: Column(
          children: [
            //SizedBox(height: 20,),
            Expanded(
              flex: 2,
              child: Container(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Row(
                  children: [
                    Card(
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(360),
                      ),
                      child: Container(
                        //margin: EdgeInsets.only(left: 0),
                          height: 10.w,
                          width: 10.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(360),
                              border: Border.all(color: Colors.black)
                          ),
                          child: Center(
                            child: IconButton(onPressed:(){
                              Navigator.pop(context);
                            }, icon: Icon(Icons.arrow_back , size: 6.w,)),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              flex: 17,
              child: PageView(
                  onPageChanged: (val){
                    cur_page = val;
                    setState(() {

                    });
                  },
                  // itemCount: 3,
                  children:
                  [
                    Container(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      // color: Colors.white,
                      child: SingleChildScrollView(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              elevation: 20,
                              child: Container(
                                height: 40.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.purpleAccent
                                ),
                                child: Image.network(widget.branchimg),
                              ),
                            ),
                            Container(
                              height: 50.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.black.withOpacity(0.4),
                              ),
                              child: Column(
                                children: [
                                  Text(widget.branch)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      color: Colors.white,
                      child: Column(
                        children: [

                        ],
                      ),
                    ),

                    Container(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      child: Column(
                        children: [

                        ],
                      ),
                    ),
                  ]
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 4.w,
                        width: 4.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360),
                          border:  Border.all(color:(cur_page == 0) ? Colors.black : Colors.transparent,width: 2) ,
                        ),
                        child: Container(
                          margin: EdgeInsets.all(2.sp),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              color: Colors.black
                          ),
                        ),

                      ),
                      SizedBox(width: 2.w,),
                      Container(
                        height: 4.w,
                        width: 4.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360),
                          border:  Border.all(color:(cur_page == 1) ? Colors.black : Colors.transparent,width: 2) ,
                        ),
                        child: Container(
                          margin: EdgeInsets.all(2.sp),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              color: Colors.black
                          ),
                        ),
                      ),
                      SizedBox(width: 2.w,),
                      Container(
                        height: 4.w,
                        width: 4.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360),
                          border:  Border.all(color:(cur_page == 2) ? Colors.black : Colors.transparent,width: 2) ,
                        ),
                        child: Container(
                          margin: EdgeInsets.all(2.sp),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              color: Colors.black
                          ),
                        ),
                      )
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
