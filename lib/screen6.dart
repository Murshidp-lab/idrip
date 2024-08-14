import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/screen2.dart';

class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 170.h),
              child: Image.asset("assets/un.png"),
            ),
            SizedBox(height: 150.h,),GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen2()));},
              child: Container(
                width: 300.w,
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
                    )
                  ],
                ),child: Center(
                  child: Text( 'Thank you for your purchase',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFF4FAFF),
                    fontSize: 15.sp,
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
