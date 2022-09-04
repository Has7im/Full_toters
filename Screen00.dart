import 'package:flutter/material.dart';
import 'package:toters_1/SplasshScreen1/Screen1.dart';
class Screen00 extends StatefulWidget {
  const Screen00({Key? key}) : super(key: key);

  @override
  State<Screen00> createState() => _Screen00State();
}

class _Screen00State extends State<Screen00> {
  var checkedvalue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(45),child:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child:Text("Login",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.black),),

          ),
          SizedBox(height: 35,),
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your Email',
            ),
          ),
          SizedBox(height: 25,),
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your Password',
            ),
          ),
          SizedBox(height: 10,),
          CheckboxListTile(
            checkColor: Colors.white,
            activeColor: Colors.pink,

            title: Row(
              children: [
                Text("Remember me?"),
                SizedBox(width: 4,),
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
          GestureDetector(
            child: Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.pink,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 5,
                    spreadRadius: 1,

                  ),
                ],
              ),
              child:
                 Center(
                  child: Text("LOGIN",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),

            ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen1()));
              }
          ),
          SizedBox(height: 5,),
          Align(
            alignment: Alignment.centerRight,
            child: Text("Forget password?",style: TextStyle(fontSize: 16,color: Colors.grey.withOpacity(0.5)),),
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Container(
                height: 2,
                width: 180,
                child: Divider(height: 2,color: Colors.grey,thickness: 1),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0,0),
                      spreadRadius: 1,
                      blurRadius: 1,
                    ),
                  ]
                ),
                child: Center(
                  child: Text("OR",style: TextStyle(color: Colors.grey,fontSize: 18),),
                ),
              ),
              Container(
                height: 2,
                width: 180,
                child: Divider(height: 2,color: Colors.grey,thickness: 1),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.g_mobiledata,color: Colors.redAccent,size: 40,),
              SizedBox(width: 10,),
              Icon(Icons.facebook,color: Colors.blueAccent,size: 30,),
              SizedBox(width: 15,),
              Icon(Icons.facebook,color: Colors.blueAccent,size: 30,),


            ],
          ),
          SizedBox(height: 30,),
          Padding(padding: EdgeInsets.only(left: 100,),child: Row(
            children: [Text("Need an account?",style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.6),),),
              SizedBox(width: 5,),
              Column(
                children: [
                  Text("SIGN UP",style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.6),),),
                  Container(
                    height: 1,
                    width: 60,
                    child: Divider(
                      height: 1,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ],
              )
            ],
          ),),
          SizedBox(height: 30,),

        ],
      ),
      ),
    );
  }
}
