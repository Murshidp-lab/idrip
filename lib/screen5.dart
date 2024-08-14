import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/screen6.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  int? _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: (Icon(
                    Icons.arrow_back,
                    size: 30.sp,
                  )),
                ),
                SizedBox(
                  width: 100.w,
                ),
                Text(
                  'checkout ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 30.h),
              child: Row(
                children: [
                  Text(
                    'Shipping information',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                  Text(
                    'change',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFF6AE2D),
                      fontSize: 15.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Stack(
              children: [
                Container(
                  width: 344.w,
                  height: 166.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x07000000),
                        blurRadius: 40.r,
                        offset: Offset(0, 10),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 20.w),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_outline,
                        size: 30.sp,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'mx.murshid._',
                        style: TextStyle(
                          color: Color(0xFF212529),
                          fontSize: 17.sp,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60.h, left: 20.w),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 30.sp,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        '221B Baker Street\nkotakkal , malappuram',
                        style: TextStyle(
                          color: Color(0xFF212529),
                          fontSize: 15.sp,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 120.h, left: 20.w),
                  child: Row(
                    children: [
                      Icon(
                        Icons.call_outlined,
                        size: 30.sp,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        '+91 8606008836',
                        style: TextStyle(
                          color: Color(0xFF212529),
                          fontSize: 15.sp,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Stack(
              children: [
                Container(
                  width: 344.w,
                  height: 200.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x07000000),
                        blurRadius: 40.r,
                        offset: Offset(0, 10),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
                RadioListTile(
                  title: Row(
                    children: [
                      Image.asset(
                        "assets/vi.png",
                        height: 70.h,
                        width: 80.w,
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Text(
                        '**** **** **** 1234',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  // Display the title for option 1
                  // Display a subtitle for option 1
                  value: 1,
                  // Assign a value of 1 to this option
                  groupValue: _selectedValue,
                  // Use _selectedValue to track the selected option
                  onChanged: (value) {
                    setState(() {
                      _selectedValue =
                          value!; // Update _selectedValue when option 1 is selected
                    });
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 65.h),
                  child: RadioListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          "assets/ma.png",
                          height: 70.h,
                          width: 80.w,
                        ),
                        SizedBox(width: 30.w,),Text(
                          '**** **** **** 1234',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    // Display the title for option 1

                    // Display a subtitle for option 1
                    value: 2,
                    // Assign a value of 1 to this option
                    groupValue: _selectedValue,
                    // Use _selectedValue to track the selected option
                    onChanged: (value) {
                      setState(() {
                        _selectedValue =
                            value!; // Update _selectedValue when option 1 is selected
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 130.h),
                  child: RadioListTile(
                    title: Row(
                      children: [
                        Image.asset("assets/ba.png",height: 70.h,width: 80.w,),
                       SizedBox(width: 30.w,), Text(
                          '**** **** **** 1234',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    // Display the title for option 1
                    // Display a subtitle for option 1
                    value: 3,
                    // Assign a value of 1 to this option
                    groupValue: _selectedValue,
                    // Use _selectedValue to track the selected option
                    onChanged: (value) {
                      setState(() {
                        _selectedValue =
                            value!; // Update _selectedValue when option 1 is selected
                      });
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20.w,top: 20.h),
              child: Row(
                children: [
                  Text('Total',
                    style: TextStyle(
                      color: Color(0xFF212529),
                      fontSize: 17.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                    ),),
                 SizedBox(width: 180.w,), Text(  '\$1898',
                    style: TextStyle(
                      color: Color(0xFF212529),
                      fontSize: 24.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.72,
                    ),
                  )
                ],
              ),
            ),
           SizedBox(height: 30.h,), GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen6()));},
             child: Container(  width: 300.w,
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
                  child: Text( 'Confirm & Pay',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFF4FAFF),
                        fontSize: 20.sp,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),),
                )),
           )
          ],
        ),
      ),
    );
  }
}
