import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled3/screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List<String> a = ["assets/b.png", "assets/c.webp", "assets/d.webp"];
  List<String> b = ["assets/e.png", "assets/f.png", "assets/g.png", "assets/h.png"];
  List<String> c = ["apple iMac \n24” (2021)", "Apple Watch SE\n(2021)", "MacBook Pro 16-inch (2021)", "iphone 13 mini\n(2021)"];
  List<String> d=["\$1299","\$279","\$2499","\$729"];
  List<String> e=["4.9","4.9","4.9","4.1"];
List<String> f=["assets/i.png","assets/j.png","assets/k.png","assets/l.png"];
List<String>g=["iPad mini 8.3-inch  (2021)","Apple Watch Se ries 3",'apple iMac \n27”',"mac mini\n(2021)"];
List<String>h=["\$499","\$199","\$1500","\$699"];
  List<String>i=["4.9","4.9","4.9","4.9"];
  List<String>j=["assets/m.png","assets/n.png","assets/p.png","assets/o.png"];
  List<String>k=["iPhone","iPad","mac","macbooks"];
  List<String>l=["assets/q.png","assets/r.png","assets/s.png","assets/t.png"];
  List<String>m=["iPhone SE \n(2020)","iPhone 12 mini\n(2020)","iPhone 13\n(2021)","iphone 13 mini\n(2021)"];
  List<String>n=["\$399","\$729","\$829","\$729"];
  List<String>o=["4.6","4.5","4.1","4.1"];
  List<String>p=["assets/u.png","assets/v.png","assets/w.png","assets/x.png"];
  List<String>q=["iPad Air 10.9 inch  (2021)","iPad 10.2-inch \n(2021)","iPad mini 8.3-inch  (2021)","iPad Pro 12.9-inch  (2021)"];
  List<String>r=["4.9","4.1","4.9","4.9"];
  List<String>s=["assets/y.png","assets/z.png","assets/aa.png","assets/ab.png"];
  List<String>t=["Pro Display XDR\n32-inch","apple iMac \n24” (2021)","apple iMac \n27”","Mac Pro\n(2020)"];
  List<String>u=["4.9","4.9","4.9","4.9"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'iDrip ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF02040F),
              fontSize: 24.sp,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
              letterSpacing: 3.60,
            ),
          ),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: 35.sp,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 35.sp,
          )
        ],
      ),
      body:SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            CarouselSlider.builder(
              itemCount: a.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                          width: 360.w,
                          color: Colors.black,
                          child: Image.asset(a[itemIndex])),
              options: CarouselOptions(
                height: 160.h,
                viewportFraction: 2,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.h, left: 20.w),
              child: Row(
                children: [
                  Text(
                    'Hot Deals',
                    style: TextStyle(
                      color: Color(0xFF3A3A3A),
                      fontSize: 14.sp,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    width: 180.w,
                  ),
                  Text(
                    'SEE ALL',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFA6A6AA),
                      fontSize: 14.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                    ),
                  )
                ],
              ),
            ),

            Container(
              height: 250.h,
              width: double.infinity,
              color: Colors.white,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: b.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 5.w, left: 5.w),
                    child: GestureDetector(onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen3(image: b[index], Text: c[index], amount: d[index],)));
                    },

                      child: Container(
                        width: 180.w,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF9FAFB),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x28000000),
                              blurRadius: 10.r,
                              offset: Offset(2, 0),
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 230,height: 230,
                                // width: 180.w,
                                // height: 180.h,
                                child: Image.asset(b[index])),
                            Text(
                              c[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w300),

                            ),
                            Padding(
                              padding:  EdgeInsets.only(right: 110.w,),
                              child: Text(d[index],
                                  style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w700),),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right: 80.w,),
                              child: Row(
                                children: [
                                  Icon(Icons.star,color: Colors.orange,),
                                  Text(e[index],
                                  style: TextStyle(
                                    color: Colors.black
                                  ),),

                                ],

                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
          SizedBox(height: 30,),  Padding(
              padding:  EdgeInsets.only(left: 20.w),
              child: Row(
                children: [
                  Text(
                    'Most Poplular',
                    style: TextStyle(
                      color: Color(0xFF3A3A3A),
                      fontSize: 14.sp,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    width: 140.w,
                  ),
                  Text(
                    'SEE ALL',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFA6A6AA),
                      fontSize: 14.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                    ),
                  )
                ],
              ),
            ),
            Container( height: 250.h,
              width: double.infinity,
              color: Colors.white,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: f.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 5.w, left: 5.w),
                    child: Container(
                      width: 180,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF9FAFB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x28000000),
                            blurRadius: 10.r,
                            offset: Offset(2, 0),
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                              width: 310,
                              height: 180,
                              child: Image.asset(f[index])),
                          Padding(
                            padding:  EdgeInsets.only(top: 20,right: 40),
                            child: Text(
                              g[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w300),

                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(top: 10.h,right: 110),
                            child: Text(h[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w700),),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right: 80.w,top: 10.h),
                            child: Row(
                              children: [
                                Icon(Icons.star,color: Colors.orange,),
                                Text(i[index],
                                  style: TextStyle(
                                      color: Colors.black
                                  ),),

                              ],

                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
            SizedBox(height: 30,),  Padding(
              padding:  EdgeInsets.only(left: 20.w),
              child: Row(
                children: [
                  Text(
                    'CATEGORIES',
                    style: TextStyle(
                      color: Color(0xFF3A3A3A),
                      fontSize: 14.sp,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    width: 140.w,
                  ),
                  Text(
                    'SEE ALL',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFA6A6AA),
                      fontSize: 14.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                    ),
                  )
                ],
              ),



            ),
           SizedBox(height: 20.h,), Container( height: 120.h,
    width: double.infinity,
    color: Colors.white,
    child:ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
      return Container(
        width: 140,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x28000000),
              blurRadius: 30.r,
              offset: Offset(2, 0),
            ),
          ],
        ),
      child:  Column(
        children: [
          SizedBox(width: 100.w,height:100.h,child: Image.asset(j[index])),
          Text(k[index],
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.sp
          ),)
        ],
      ));

    }, separatorBuilder: (context, index) {
 return SizedBox(width: 10.w,);

    }, itemCount: 4)
            ),
            Padding(
              padding:  EdgeInsets.only(top: 20.h,left: 20.w),
              child: Row(
                children: [
                  Text(
                    'iPhones',
                    style: TextStyle(
                      color: Color(0xFF3A3A3A),
                      fontSize: 14.sp,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                    ),),
                   SizedBox(width: 180.w,),Text(
                    'SEEALL',
                    style: TextStyle(
                      color: Color(0xFF3A3A3A),
                      fontSize: 14.sp,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w400,
                    ),)
                ],
              ),
            ),
           SizedBox(height: 20.h,), Container( height: 280.h,
              width: double.infinity,
              color: Colors.white,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: l.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 5.w, left: 5.w),
                    child: Container(
                      width: 180,
                      height: 200,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF9FAFB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x28000000),
                            blurRadius: 10.r,
                            offset: Offset(2, 0),
                          )
                        ],
                      ),
                      child: SizedBox(
                          width: 280.w,
                          height: 180.h,
                          child: Column(
                            children: [
                              Image.asset(l[index]),
                              SizedBox(height: 20.h,),Text(
                                m[index],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w300),

                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: 20.h,right: 80.w),
                                child: Text(n[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.sp,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w700),),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: 10,left: 10),
                                child: Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    Text(o[index],
                                      style: TextStyle(
                                          color: Colors.black
                                      ),),

                                  ],

                                ),
                              )
                            ],
                          )),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 10.w,
                  );
                },
              ),
            ),
             Padding(
               padding:  EdgeInsets.only(left: 40,top: 10),
               child: Row(
                 children: [
                   Text(
                    'iPads',
                    style: TextStyle(
                      color: Color(0xFF3A3A3A),
                      fontSize: 14.sp,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                    ),),
                    SizedBox(width: 220,),Text(
                     'SEEALL',
                     style: TextStyle(
                       color: Color(0xFF3A3A3A),
                       fontSize: 14.sp,
                       fontFamily: 'Lato',
                       fontWeight: FontWeight.w400,
                     ),)
                 ],
               ),
             ),
           SizedBox(height: 20,), Container( height: 280.h,
              width: double.infinity,
              color: Colors.white,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: p.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 5.w, left: 5.w),
                    child: Container(
                      width: 180,
                      height: 200,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF9FAFB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x28000000),
                            blurRadius: 10.r,
                            offset: Offset(2, 0),
                          )
                        ],
                      ),
                      child: SizedBox(
                          width: 280.w,
                          height: 180.h,
                          child: Column(
                            children: [
                              Image.asset(p[index]),
                              SizedBox(height: 20.h,),Text(
                                q[index],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w300),

                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: 20.h,right: 80.w),
                                child: Text(n[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.sp,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w700),),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: 10.h,left: 10.w),
                                child: Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    Text(r[index],
                                      style: TextStyle(
                                          color: Colors.black
                                      ),),

                                  ],

                                ),
                              )
                            ],
                          )),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 10.w,
                  );
                },
              ),
            ),
             Padding(
               padding:  EdgeInsets.only(left: 30,top: 10),
               child: Row(
                 children: [
                   Text(
                    'macs',
                    style: TextStyle(
                      color: Color(0xFF3A3A3A),
                      fontSize: 15.sp,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                    ),),
                    SizedBox(width: 220,),Text(
                     'SEEALL',
                     style: TextStyle(
                       color: Color(0xFF3A3A3A),
                       fontSize: 14.sp,
                       fontFamily: 'Lato',
                       fontWeight: FontWeight.w400,
                     ),)
                 ],
               ),
             ),
            SizedBox(height: 20.h,),Container( height: 280.h,
              width: double.infinity,
              color: Colors.white,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: s.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 5.w, left: 5.w),
                    child: Container(
                      width: 180.w,
                      height: 200.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF9FAFB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x28000000),
                            blurRadius: 10.r,
                            offset: Offset(2, 0),
                          )
                        ],
                      ),
                      child: SizedBox(
                          width: 280.w,
                          height: 180.h,
                          child: Column(
                            children: [
                              Image.asset(s[index]),
                              Padding(
                                padding:  EdgeInsets.only(top: 20.h,),
                                child: Row(
                                  children: [
                                    Text(
                                      t[index],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w300),

                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: 20.h,right: 80.w),
                                child: Text(n[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.sp,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w700),),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: 10.h,left: 10.w),
                                child: Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    Text(u[index],
                                      style: TextStyle(
                                          color: Colors.black
                                      ),),
                                  ],

                                ),
                              )
                            ],
                          )),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 10.w,
                  );
                },
              ),
            ),
            // Row(
            //     children: [
            //       Icon(Icons.home_filled),
            //       Icon(Icons.bookmark),
            //       Icon(Icons.category_outlined),
            //       Icon(Icons.person),
            //       Icon(Icons.shopping_bag_outlined),
            //     ],
            //
            //   ),


          ]),


        ),
      ),
    );
  }
}
