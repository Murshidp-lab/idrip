import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
@override
void initState() {
  super.initState();
  Timer(Duration(seconds: 5),
          ()=>Navigator.pushReplacement(context,
          MaterialPageRoute(builder:
              (context) =>
              Screen2()
          )
      )
  );
}
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 150.h),
                child: SizedBox(
                    width: 250.w,
                    child: Stack(
                      children:[ Image.asset(
                        "assets/a.png",
                      ),
                   ], )),
              ),
              Text(
                'iDrip ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF212529),
                  fontSize: 37.sp,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 5.55,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
