import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:toters_1/SplasshScreen00/Screen00.dart';
import 'package:toters_1/SplasshScreen1/Screen1.dart';
import 'package:toters_1/SplasshScreen4/Screen4.dart';
import 'package:toters_1/SplasshScreen6/Screen6.dart';
import 'package:toters_1/SplasshScreen7/Screen7.dart';
class Screen5 extends StatefulWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
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
        backgroundColor: Colors.grey.withOpacity(0.0),
        toolbarHeight:40 ,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Text("هاشم ميثم",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black),),
              SizedBox(width: 15,),
            ],
          ),
        ],
        elevation: 0,
      ),
      backgroundColor: Colors.grey.withOpacity(.1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15,),
            Padding(padding: EdgeInsets.only(left: 290),child: Container(
              height: 40,
              width: 190,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.arrow_back_ios,color: Colors.teal,size: 20,),
                  SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("الفئة الخضراء",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.black),),
                      Text("16k نقطة",style: TextStyle(color: Colors.grey.withOpacity(0.5),fontSize: 12),),
                    ],
                  ),

                  Icon(Icons.card_giftcard,color: Colors.teal,size: 18,),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(0, 1),
                      blurRadius: 3,
                    ),
                  ]
              ),
            ),),
            SizedBox(height: 15,),
            Padding(padding: EdgeInsets.only(left: 20),child: Container(
              height: 90,
              width: 450,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    offset: Offset(0, 1),
                    blurRadius: 3,
                  ),
                ]
              ),
              child: Row(
                children: [
                  SizedBox(width: 25,),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Icon(Icons.language,color: Colors.black.withOpacity(0.5),),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("الغة",style: TextStyle(color: Colors.black,fontSize: 15),)
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Icon(Icons.wallet,color: Colors.black.withOpacity(0.5),),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("طرق الدفع",style: TextStyle(color: Colors.black,fontSize: 15),)
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Icon(Icons.headset_mic_outlined,color: Colors.black.withOpacity(0.5),),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("المساعدة",style: TextStyle(color: Colors.black,fontSize: 15),)
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Icon(Icons.manage_accounts_outlined,color: Colors.black.withOpacity(0.5),),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("الملف الشخصي",style: TextStyle(color: Colors.black,fontSize: 14),)
                      ],
                    ),
                  ),
                ],
              ),
            ),),
            SizedBox(height: 15,),
            Padding(padding: EdgeInsets.only(left: 20),child: Container(
              height: 185,
              width: 450,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(0, 1),
                      blurRadius: 3,
                    ),
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.info_outline,color: Colors.teal,size: 20,),
                      SizedBox(width: 5,),
                      Text("توترز كاش",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                      SizedBox(width: 15,),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(" د,ع,0",style: TextStyle(color: Colors.teal,fontSize: 15),),
                      SizedBox(width: 310,),
                      Text("المحفظة",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                      SizedBox(width: 6,),
                      Icon(Icons.wallet,color: Colors.black.withOpacity(0.3),size: 25,),
                      SizedBox(width: 15,),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Padding(padding: EdgeInsets.only(right: 17),child: Container(
                    height: 1,
                    width: 416,
                    child:Divider(height: 2,thickness: 1,color:Colors.grey.withOpacity(0.2), ) ,
                  ),),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("اضف الى الرصيد",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                      SizedBox(width: 6,),
                      Icon(Icons.add,color: Colors.black.withOpacity(0.3),size: 25,),
                      SizedBox(width: 15,),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Padding(padding: EdgeInsets.only(right: 17),child: Container(
                    height: 1,
                    width: 416,
                    child:Divider(height: 2,thickness: 1,color:Colors.grey.withOpacity(0.2), ) ,
                  ),),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("تحويل الاموال",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                      SizedBox(width: 6,),
                      Icon(Icons.arrow_upward_rounded,color: Colors.black.withOpacity(0.3),size: 25,),
                      SizedBox(width: 15,),
                    ],
                  ),

                ],
              ),
            ),),
            SizedBox(height: 15,),
            Padding(padding: EdgeInsets.only(left: 20),child: Container(
              height: 137,
              width: 450,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(0, 1),
                      blurRadius: 3,
                    ),
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("عروض خاصة",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                      SizedBox(width: 15,),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("2,650 د,ع",style: TextStyle(color: Colors.teal,fontSize: 14),),
                      SizedBox(width: 300,),
                      Text("رصيد",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                      SizedBox(width: 6,),
                      Icon(Icons.settings_input_svideo,color: Colors.black.withOpacity(0.3),size: 25,),
                      SizedBox(width: 15,),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Padding(padding: EdgeInsets.only(right: 17),child: Container(
                    height: 1,
                    width: 416,
                    child:Divider(height: 2,thickness: 1,color:Colors.grey.withOpacity(0.2), ) ,
                  ),),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("اضف رمز العرض",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                      SizedBox(width: 6,),
                      Icon(Icons.local_offer_outlined,color: Colors.black.withOpacity(0.3),size: 25,),
                      SizedBox(width: 15,),
                    ],
                  ),
                  SizedBox(height: 12,),

                ],
              ),
            ),),
            SizedBox(height: 15,),
            Padding(padding: EdgeInsets.only(left: 20),child: Container(
              height: 285,
              width: 450,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(0, 1),
                      blurRadius: 3,
                    ),
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("تفاصيل الحساب",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                      SizedBox(width: 15,),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("الاشعارات",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                      SizedBox(width: 6,),
                      Icon(Icons.notifications_outlined,color: Colors.black.withOpacity(0.3),size: 25,),
                      SizedBox(width: 15,),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Padding(padding: EdgeInsets.only(right: 17),child: Container(
                    height: 1,
                    width: 416,
                    child:Divider(height: 2,thickness: 1,color:Colors.grey.withOpacity(0.2), ) ,
                  ),),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("العناوين",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                      SizedBox(width: 6,),
                      Icon(Icons.location_on_outlined,color: Colors.black.withOpacity(0.3),size: 25,),
                      SizedBox(width: 15,),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Padding(padding: EdgeInsets.only(right: 17),child: Container(
                    height: 1,
                    width: 416,
                    child:Divider(height: 2,thickness: 1,color:Colors.grey.withOpacity(0.2), ) ,
                  ),),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("اختياراتك",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                      SizedBox(width: 6,),
                      Icon(Icons.favorite_border,color: Colors.black.withOpacity(0.3),size: 25,),
                      SizedBox(width: 15,),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Padding(padding: EdgeInsets.only(right: 17),child: Container(
                    height: 1,
                    width: 416,
                    child:Divider(height: 2,thickness: 1,color:Colors.grey.withOpacity(0.2), ) ,
                  ),),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("التفضيلات",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                      SizedBox(width: 6,),
                      Icon(Icons.list_alt,color: Colors.black.withOpacity(0.3),size: 25,),
                      SizedBox(width: 15,),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Padding(padding: EdgeInsets.only(right: 17),child: Container(
                    height: 1,
                    width: 416,
                    child:Divider(height: 2,thickness: 1,color:Colors.grey.withOpacity(0.2), ) ,
                  ),),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("ادع اصدقائك",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                      SizedBox(width: 6,),
                      Icon(Icons.person_add_alt_outlined,color: Colors.black.withOpacity(0.3),size: 25,),
                      SizedBox(width: 15,),
                    ],
                  ),
                ],
              ),
            ),),
            SizedBox(height: 15,),
            Padding(padding: EdgeInsets.only(left: 20),child: Container(
              height: 237,
              width: 450,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(0, 1),
                      blurRadius: 3,
                    ),
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("مركز المساعدة",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                      SizedBox(width: 15,),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("اطلب مساعدة",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                      SizedBox(width: 6,),
                      Icon(Icons.headset_mic_outlined,color: Colors.black.withOpacity(0.3),size: 25,),
                      SizedBox(width: 15,),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Padding(padding: EdgeInsets.only(right: 17),child: Container(
                    height: 1,
                    width: 416,
                    child:Divider(height: 2,thickness: 1,color:Colors.grey.withOpacity(0.2), ) ,
                  ),),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("بطاقات مساعدة",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                      SizedBox(width: 6,),
                      Icon(Icons.list_alt_rounded,color: Colors.black.withOpacity(0.3),size: 25,),
                      SizedBox(width: 15,),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Padding(padding: EdgeInsets.only(right: 17),child: Container(
                    height: 1,
                    width: 416,
                    child:Divider(height: 2,thickness: 1,color:Colors.grey.withOpacity(0.2), ) ,
                  ),),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("قانوني",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                      SizedBox(width: 6,),
                      Icon(Icons.handyman_sharp,color: Colors.black.withOpacity(0.3),size: 25,),
                      SizedBox(width: 15,),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Padding(padding: EdgeInsets.only(right: 17),child: Container(
                    height: 1,
                    width: 416,
                    child:Divider(height: 2,thickness: 1,color:Colors.grey.withOpacity(0.2), ) ,
                  ),),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("الاسئلة المتكررة",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                      SizedBox(width: 6,),
                      Icon(Icons.info_outlined,color: Colors.black.withOpacity(0.3),size: 25,),
                      SizedBox(width: 15,),
                    ],
                  ),
                  SizedBox(height: 12,),

                ],
              ),
            ),),
            SizedBox(height: 15,),
            Padding(padding: EdgeInsets.only(left: 20),child: Container(
              height: 60,
              width: 450,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(0, 1),
                      blurRadius: 3,
                    ),
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          child: Text("تسجيل الخروح",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Colors.red.withOpacity(0.8)),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen00()));
                          }
                      ),
                      SizedBox(width: 6,),
                      Icon(Icons.exit_to_app,color: Colors.red.withOpacity(0.8),size: 29,),
                      SizedBox(width: 15,),
                    ],
                  ),
                  SizedBox(height: 12,),

                ],
              ),
            ),),
            SizedBox(height: 15,),


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
