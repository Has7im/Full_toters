import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:toters_1/SplasshScreen1/Screen1.dart';
import 'package:toters_1/SplasshScreen4/Screen4.dart';
import 'package:toters_1/SplasshScreen5/Screen5.dart';
import 'package:toters_1/SplasshScreen6/Screen6.dart';
import 'package:toters_1/SplasshScreen7/Screen7.dart';
class Screen2 extends StatefulWidget {

  final String MainImage;
  final String FirstRestName;
  Screen2(
  {
    required this.MainImage,
    required this.FirstRestName,

  });


  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int _currentIndex = 0;
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 280,
                  width: 500,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(widget.MainImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(child:
                Container(
                  height: 50,
                  width: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(" 36 - 46 ",style: TextStyle(fontWeight: FontWeight.w700),),
                      SizedBox(height: 5,),
                      Text("mins",style: TextStyle(fontSize:10,color: Colors.black54),),
                    ],
                  ),
                ),
                  left: 20,
                  bottom: 5,
                ),

              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 280,
              width: 500,
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(widget.FirstRestName,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                  SizedBox(height: 5,),
                  Text("نحن نقدم أفضل الوجبات الشهية مع الصلصات الأمريكية الخاصة والفريدة من نوعها",style: TextStyle(fontSize: 16,color: Colors.black54),),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 25,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment:  MainAxisAlignment.center,
                          children: [
                            Text("25% خصم",style: TextStyle(fontSize: 15,color: Colors.orangeAccent),),
                            SizedBox(width: 1,),
                            Icon(Icons.label_important_outline,size: 15,color: Colors.green,),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 25,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment:  MainAxisAlignment.end,
                          children: [
                            Text("اكسب نقاط",style: TextStyle(fontSize: 15,color: Colors.black87),),
                            SizedBox(width: 3,),
                            Icon(Icons.local_hospital_outlined,size: 15,color: Colors.green,),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 25,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment:  MainAxisAlignment.center,
                          children: [
                            Text("4.9",style: TextStyle(fontSize: 15,color: Colors.black87),),
                            SizedBox(width: 3,),
                            Icon(Icons.star,size: 15,color: Colors.green,),
                          ],
                        ),
                      ),




                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(padding: EdgeInsets.only(right: 250),child:Icon(Icons.arrow_back_ios,color: Colors.green,size: 22,),),

                      Container(
                        height: 60,
                        width: 140,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star_border,color: Colors.grey,size: 22,),
                                Icon(Icons.star,color: Colors.green,size: 22,),
                                Icon(Icons.star,color: Colors.green,size: 22,),
                                Icon(Icons.star,color: Colors.green,size: 22,),
                                Icon(Icons.star,color: Colors.green,size: 22,),
                              ],
                            ),
                            Text("استنادا على 224 من التقييمات",style: TextStyle(fontSize: 11,color: Colors.black54),),

                          ],
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text("4.9",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),),

                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 1,
                    width: 550,
                    child: Divider(height: 1,thickness: 1,color: Colors.grey,),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("...اكتب تعليقا",style: TextStyle(color: Colors.green,fontSize: 18),),
                      SizedBox(width: 10,),
                      Icon(Icons.my_library_books_rounded,color: Colors.green,size: 20,),


                    ],
                  ),

                ],

              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: GestureDetector(
                child: Icon(Icons.person,color: Colors.black.withOpacity(0.3)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen5()));
                }
            ),
            title: Text('حساب'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: GestureDetector(
                child: Icon(Icons.list_alt,color: Colors.black.withOpacity(0.3)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen7()));
                }
            ),
            title: Text('طلبات'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: GestureDetector(
                child: Icon(Icons.card_travel,color: Colors.black.withOpacity(0.3)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen6()));
                }
            ),
            title: Text('المندوب',),
            activeColor: Colors.pink,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: GestureDetector(
                child: Icon(Icons.search,color: Colors.black.withOpacity(0.3)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen4()));
                }
            ),
            title: Text('بحث'),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: GestureDetector(
                child: Icon(Icons.home,color: Colors.black.withOpacity(0.3)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen1()));
                }
            ),
            title: Text('رئيسية'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
