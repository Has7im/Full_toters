import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:toters_1/SplasshScreen1/Screen1.dart';
import 'package:toters_1/SplasshScreen5/Screen5.dart';
import 'package:toters_1/SplasshScreen6/Screen6.dart';
import 'package:toters_1/SplasshScreen7/Screen7.dart';
class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Row(
            children: [
              Text("البحث عن محل او قطعة",style: TextStyle(color: Colors.black54.withOpacity(0.5),fontSize: 19),),
              SizedBox(width: 10,),
              Icon(Icons.search,color: Colors.black,size: 25,),
              SizedBox(width: 20,),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 110,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFE00b491),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_ios,color: Colors.white,),
                  SizedBox(width: 150,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("!اطلب اي شيء",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("جديدنا على توترز يسع على",style: TextStyle(fontSize: 15,color: Colors.white,),),
                      Text("دراجة نارية يمكننا توصيله",style: TextStyle(fontSize: 15,color: Colors.white,),),
                    ],
                  ),
                  Container(
                    height: 75,
                    width: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/tot.jpg",),
                          fit: BoxFit.fill
                      ),


                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            MyOp(
              "assets/Screen4images/99.jpg",
              "خصومات السعادة",
              "سعادتك تكتمل ويانة خصومات تصل الى 50% ",
              "متاجر 22",
            ),
            SizedBox(height: 30,),
            MyOp(
              "assets/Screen4images/98.jpg",
              "خصومات الاسبوعية",
              "احصل على خصم 50% على مطاعم هذا الاسبوع",
              "متاجر 24",
            ),
            SizedBox(height: 30,),
            MyOp(
              "assets/Screen4images/78.jpg",
              "كاش باك",
              "استرجع رصيد على طلباتك من متاجر مختارة و استخدمهم",
              "متاجر 17",
            ),
            SizedBox(height: 30,),
            MyOp(
              "assets/Screen4images/55.jpg",
              "اشياء جديدة",
              "خصم 50% على اول تجربة الك من هذه المطاعم",
              "متاجر 55",
            ),
            SizedBox(height: 30,),
            MyOp(
              "assets/Screen4images/44.jpg",
              "وجبات شرقية",
              "كباب,مندي,دولمةو قوزي بين الحين و الاخر اختار الوجبات",
              "متاجر 3",
            ),
            SizedBox(height: 30,),
            MyOp(
              "assets/Screen4images/98.jpg",
              "خصومات الاسبوعية",
              "احصل على خصم 50% على مطاعم هذا الاسبوع",
              "متاجر 24",
            ),
            SizedBox(height: 30,),
            MyOp(
              "assets/Screen4images/99.jpg",
              "خصومات السعادة",
              "سعادتك تكتمل ويانة خصومات تصل الى 50% ",
              "متاجر 22",
            ),
            SizedBox(height: 30,),
            MyOp(
              "assets/Screen4images/98.jpg",
              "خصومات الاسبوعية",
              "احصل على خصم 50% على مطاعم هذا الاسبوع",
              "متاجر 24",
            ),
            SizedBox(height: 30,),
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
  Container MyOp(MainImage,firstText,scoundText,thirdText){
    return Container(
      height:130,
      width: 423,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 30,
                width: 213,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(firstText,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),
              Container(
                height: 78,
                width: 213,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(scoundText,style: TextStyle(fontSize: 16,color: Colors.grey.withOpacity(0.7)),),
                  ],
                ),
              ),
              Container(
                height: 22,
                width: 213,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(thirdText,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.teal),),
                  ],
                ),
              ),

            ],
          ),
          SizedBox(width: 10,),
          Container(
            height: MediaQuery.of(context).size.height,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(MainImage),
                  fit: BoxFit.cover,
                )
            ),
          ),
        ],
      ),
    );
  }
}
