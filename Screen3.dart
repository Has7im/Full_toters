import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:toters_1/SplasshScreen1/Screen1.dart';
import 'package:toters_1/SplasshScreen4/Screen4.dart';
import 'package:toters_1/SplasshScreen5/Screen5.dart';
import 'package:toters_1/SplasshScreen6/Screen6.dart';
import 'package:toters_1/SplasshScreen7/Screen7.dart';
class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  int _currentIndex = 0;
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  String radioItem='';
  var checkedvalue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.close,color: Colors.black,),
        actions: [
          Icon(Icons.share,color: Colors.black,),
          SizedBox(width: 20,),
          Icon(Icons.favorite_border,color: Colors.black,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width:MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/mainImges/23.jpg"),fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 30,),
            Padding(padding: EdgeInsets.only(left: 20),child:Text("fire fire",style: TextStyle(fontSize: 25,color: Colors.black),),),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.only(left:20 ),child:Text("kljljkln klkjoijkljmo ji[u iuio jio u89u iklj'isj'vklj'sdkfjvoasdkljvaiodvjji",style: TextStyle(fontSize: 15,color: Colors.grey.withOpacity(0.7)),),),
            SizedBox(height: 15,),
            Padding(padding: EdgeInsets.only(left: 20),child:Text("IQD 13,000",style: TextStyle(fontSize: 20,color: Colors.green),),),
            SizedBox(height: 15,),
            Container(
              height: 10,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.withOpacity(0.5),
            ),
            SizedBox(height: 15,),
            Padding(padding: EdgeInsets.only(left: 20),child:Text("choose portion",style: TextStyle(fontSize: 20,color: Colors.black),),),
            RadioListTile(
              title: Text("Half Chicken"),
                value: "value",
                groupValue: radioItem,
                onChanged: (val){
                setState(() {
                  radioItem='$val';
                });
                }),
            RadioListTile(
                title: Row(
                  children: [
                    Text("Whole Chicken"),
                    SizedBox(width: 4,),
                    Text("+IQD 12,000 ",style: TextStyle(color: Colors.grey.withOpacity(0.6),fontSize: 14),),
                  ],
                ),
                value: "3value",
                groupValue: radioItem,
                onChanged: (val){
                  setState(() {
                    radioItem='$val';
                  });
                }),
            SizedBox(height: 15,),
            Container(
              height: 10,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.withOpacity(0.5),
            ),
            SizedBox(height: 15,),
            Padding(padding: EdgeInsets.only(left: 20),child:Text("Extra",style: TextStyle(fontSize: 20,color: Colors.black),),),
            CheckboxListTile(
                title: Row(
                  children: [
                    Text("Yemeni Spicy Sauce Cup "),
                    SizedBox(width: 4,),
                    Text("+IQD 500 ",style: TextStyle(color: Colors.grey.withOpacity(0.6),fontSize: 14),),
                  ],
                ),
                value: checkedvalue,
                onChanged: (value)
                {
                 setState(() {
                   checkedvalue=value!;
                 });
                },
            ),
            CheckboxListTile(
              title: Row(
                children: [
                  Text("Yemeni Spicy Sauce Cup "),
                  SizedBox(width: 4,),
                  Text("+IQD 500 ",style: TextStyle(color: Colors.grey.withOpacity(0.6),fontSize: 14),),
                ],
              ),
              value: checkedvalue,
              onChanged: (value2)
              {
                setState(() {
                  checkedvalue=value2!;
                });
              },
            ),
            SizedBox(height: 15,),
            Container(
              height: 10,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.withOpacity(0.5),
            ),
            SizedBox(height: 15,),
            Padding(padding: EdgeInsets.only(left: 20),child:Text("Extra",style: TextStyle(fontSize: 20,color: Colors.black),),),



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
