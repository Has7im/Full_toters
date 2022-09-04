import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:toters_1/SplasshScreen1/Screen1.dart';
import 'package:toters_1/SplasshScreen4/Screen4.dart';
import 'package:toters_1/SplasshScreen5/Screen5.dart';
import 'package:toters_1/SplasshScreen7/Screen7.dart';
class Screen6 extends StatefulWidget {
  const Screen6({Key? key}) : super(key: key);

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
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
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.end,
        children: [
          Container(
            color: Color(0xFE00b491),
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(" !نوصل اي شيء يسع على متن دراجة نارية",style: TextStyle(fontSize: 23,color: Colors.white),),
            ),
          ),
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.all(20),child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(" : اطلب مندوب ل",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 22),),
            SizedBox(height: 25,),
              Container(
                height: 140,
                width: 450,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                 border: Border.all(color:Colors.grey.withOpacity(0.1)),
                ),
                child: Padding(padding: EdgeInsets.all(8),child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.keyboard_arrow_left,color:Color(0xFE00b491),size: 30,),
                    Image(image: AssetImage("assets/Screen4images/toters1.jpg"),height: 100,width: 100,),
                    SizedBox(width: 10,),
                    Container(
                      height: 120,
                      width: 190,
                      child: Padding(padding: EdgeInsets.all(10),child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("توصيل احتياجاتك",style: TextStyle(fontSize: 21,color: Color(0xFE00b491)),),
                          SizedBox(height: 5,),
                          Text("مثلا نسيت مفاتحك بلبيت و تريد احد يوصلة لك للمكتب",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 17),)
                        ],
                      ),
                      ),
                    ),
                  ],
                ),)
              ),
              SizedBox(height: 25,),
              Container(
                  height: 140,
                  width: 450,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color:Colors.grey.withOpacity(0.1)),
                  ),
                  child: Padding(padding: EdgeInsets.all(8),child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.keyboard_arrow_left,color:Color(0xFE00b491),size: 30,),
                      Image(image: AssetImage("assets/Screen4images/toters2.jpg"),height: 100,width: 100,),
                      Container(
                        height: 135,
                        width: 230,
                        child: Padding(padding: EdgeInsets.all(10),child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("شراء احتياجاتك",style: TextStyle(fontSize: 21,color: Color(0xFE00b491)),),
                            SizedBox(height: 5,),
                            Text("ما لقيت اللي تريدة بتطبيقنا؟ مندوب توترز يقدر يشتري لك اللي تحتاجة من اي مكان تختارة",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 16),)
                          ],
                        ),
                        ),
                      ),
                    ],
                  ),)
              ),

            ],
          ),)
        ],
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
