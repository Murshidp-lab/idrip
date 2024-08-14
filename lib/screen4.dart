import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/screen5.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key, required this.image, required this.text});
final String image;
 final String text;
  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Padding(
                padding:  EdgeInsets.only(right: 310.w),
                child: (Icon(
                  Icons.arrow_back,
                  size: 30.sp,
                )),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20.w,top: 30.h),
              child: Container(width: 285.w,
                height: 39.h,
                decoration: ShapeDecoration(
                  color: Color(0xB2F6AE2D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),child: Center(
                  child: Text( 'Delivery for FREE until the end of the month',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),),
                ),),
            ),
           Padding(
             padding:  EdgeInsets.only(top: 40.h,left: 10.w),
             child: Stack(
               children: [
                 Container(  width: 340.w,
                    height: 130.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
                      shadows: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 40.r,
                          offset: Offset(1, 10),
                          spreadRadius: 10.r,
                        )
                      ],
                    ),
                    ),
             Padding(
                   padding:  EdgeInsets.only(right: 190.w),
                   child: Image.asset(widget.image,height: 130.h,width: 150.w,),
                 ),Padding(
                   padding:  EdgeInsets.only(left: 150.w,top: 20.h),
                   child: Text( widget.text,
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 11.sp,
                       fontFamily: 'Roboto',
                       fontWeight: FontWeight.w600,
                     ),),
                 ),Padding(
                   padding:  EdgeInsets.only(left: 148.w,top: 50.h),
                   child: Text( '\$599',
                     style: TextStyle(
                       color: Color(0xFF212529),
                       fontSize: 23.sp,
                       fontFamily: 'Roboto',
                       fontWeight: FontWeight.w800,
                       letterSpacing: 0.72,
                     ),),
                 ),Padding(
                   padding:  EdgeInsets.only(left: 310.w,),
                   child: Icon(Icons.close,size: 25,color: Colors.black,),
                 )
               ],
             ),
           ),
            Padding(
              padding:  EdgeInsets.only(top: 20.h,left: 10.w),
              child: Stack(
                children: [
                  Container(  width: 340.w,
                    height: 130.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
                      shadows: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 40.r,
                          offset: Offset(1, 10),
                          spreadRadius: 10.r,
                        ),
                      ],
                    ),
                  ), Padding(
                    padding:  EdgeInsets.only(right: 190.w),
                    child: Image.asset("assets/ac.png",height: 130.h,width: 150.w,),
                  ),Padding(
                    padding:  EdgeInsets.only(left: 150.w,top: 20.h),
                    child: Text( "Apple iMac  24” (2021)",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.sp,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                      ),),
                  ),Padding(
                    padding:  EdgeInsets.only(left: 148.w,top: 50.h),
                    child: Text( '\$1299',
                      style: TextStyle(
                        color: Color(0xFF212529),
                        fontSize: 23.sp,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.72,
                      ),),
                  ),Padding(
                    padding:  EdgeInsets.only(left: 310.w,),
                    child: Icon(Icons.close,size: 25.sp,color: Colors.black,),
                  )
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20.w,top: 40.h),
              child: Row(
                children: [
                  Text('Total',
                    style: TextStyle(
                      color: Color(0xFF212529),
                      fontSize: 30.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                    ),),
                 SizedBox(width: 130.w,), Text(  '\$1898',
                    style: TextStyle(
                      color: Color(0xFF212529),
                      fontSize: 30.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.08,
                    ),
                  )
                ],
              ),
            ),
           SizedBox(height: 80.h,), GestureDetector(onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => Screen5()));},
              child:
              Container(width: 344.w,
                height: 50.h,
                decoration: ShapeDecoration(
                  color: Color(0xFFFB8500),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 40.r,
                      offset: Offset(0, 20),
                      spreadRadius: 0,
                    )
                  ],
                ), child: Center(
                  child: Text('checkout',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF4FAFF),
                      fontSize: 20.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),),
                ),
              ),

            )
          ],
        ),
      ),
    );
  }
}
