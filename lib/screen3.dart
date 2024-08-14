import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/screen4.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key, required this.image, required this.Text, required this.amount});
  final String image;
  final String Text;
  final String amount;
  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
             Padding(
               padding:  EdgeInsets.only(left: 10.w),
               child: Row(
                 children: [
                    IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, icon: Icon(Icons.arrow_back,size: 35,),),
                   SizedBox(width: 260.w,),Icon(Icons.bookmark_border_rounded,size: 35.sp,)
                 ],
               ),
             ),
              Container( width: 260.w,
                height: 260.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 20.r,
                      offset: Offset(0, 4),
                    )
                  ],
                ),child: SizedBox(width:20.w,height:20.h,child: Image.asset(widget.image)),),
              Text( widget.Text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                ),),
              Padding(
                padding:  EdgeInsets.only(top: 20.h,right: 299.w),
                child: Text( 'Colors',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 20.h,left: 20.w),
                child: Row(
                  children: [
                    Container( width: 100.w,
                      height: 30.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFF774488),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.w, color: Color(0xFF774488)),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x0F000000),
                            blurRadius: 14.r,
                            offset: Offset(0, 4),
                          )
                        ],
                      ),),
                    SizedBox(width: 10.w,),Container( width: 100.w,
                      height: 30.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFC9A19C),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.w, color: Color(0x0F000000)),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x0F000000),
                            blurRadius: 14.r,
                            offset: Offset(0, 4),
                          )
                        ],
                      ),),
                   SizedBox(width:10 .w,), Container( width: 100.w,
                      height: 30.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFA1C89B),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.w, color: Color(0x0F000000)),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x0F000000),
                            blurRadius: 14.r,
                            offset: Offset(0, 4),
                          )
                        ],
                      ),),
          
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 10.h,right: 100.w),
                child: Text('Get Apple TV+ free for a year',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 15.w,top: 10.h),
                child: Text('iPad Air. With a stunning 10.9-inch Liquid Retina display \nand  True Tone for a more comfortable viewing \nexperience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation,\n and next-level games - all with ease. Featuring fast,\n easy,and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including\n Magic Keyboard and Apple Pencil (2nd generation)6.',
                  style: TextStyle(
                    color: Color(0xFF212529),
                    fontSize: 12.sp,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0.24,
                  ),),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 10.w),
                child: Row(
                  children: [
                    Text('Total',
                      style: TextStyle(
                        color: Color(0xFF212529),
                        fontSize: 17.sp,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                      ),),
                   SizedBox(width: 215.w,), Text( widget.amount,
                      style: TextStyle(
                        color: Color(0xFF212529),
                        fontSize: 24.sp,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.72,
                      ),)
                  ],
                ),
              ),
             SizedBox(height: 20.h,) ,GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen4(
                image: widget.image, text: widget.Text,)));},
               child: Container( width: 260.w,
                  height: 50.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFB8500),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 40.r,
                        offset: Offset(0, 20),
                        spreadRadius: 0.r,
                      )
                    ],
                  ),child: Center(
                    child: Text( 'Add to cart',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFF4FAFF),
                        fontSize: 16.sp,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,

                      ),),
                  ),),
             )
            ],
          ),
        ),
      ),
    );

  }
}
