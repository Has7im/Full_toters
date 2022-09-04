import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:toters_1/SplasshScreen1/Screen1.dart';
import 'package:toters_1/SplasshScreen4/Screen4.dart';
import 'package:toters_1/SplasshScreen5/Screen5.dart';
import 'package:toters_1/SplasshScreen6/Screen6.dart';
class Screen7 extends StatefulWidget {
  const Screen7({Key? key}) : super(key: key);

  @override
  State<Screen7> createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
  int _currentIndex = 0;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: SafeArea(child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 5,
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: const TabBar(
              labelColor: Colors.black,
              indicatorColor: Color(0xFE00b491),
              unselectedLabelColor: Color(0xFE00b491),
              tabs: <Widget>[
                Tab(
                  text: "الطلبات القادمة",
                ),
                Tab(
                  text: "طلبات سابقة",
                ),

              ]
          ),
        ),
        backgroundColor: Colors.grey.withOpacity(0.1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/Screen4images/67.jpg"),height: 180,width: 180,),
              Text("لا يوجد طلبات قادمة",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
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
      ),),
    );


  }
}
