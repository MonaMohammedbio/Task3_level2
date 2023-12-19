import 'dart:async';

import 'package:advanced_task2/pages/Homepage.dart';
import 'package:advanced_task2/pages/Signin.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SplashScreen extends StatefulWidget {

const  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Object? get finalusername => null;

  @override
  void initState() {
    getvalidationData().whenComplete(() async{
      Timer(Duration(seconds: 3),
              ()=> Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>(finalusername==null?
              SigninScreen():HomePage())
          )
          ));
    });
    super.initState();


  }

  Future getvalidationData ()async{
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
        var obtainedUsername = sharedPreferences.getBool("username");
    setState(() {
      var finalusername = obtainedUsername;
    });
    print(finalusername);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color:Colors.lightBlueAccent,
          child: Center(
            child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  SizedBox(height: 150,width: 150,child:Image(image: AssetImage('images/1.png')) ,),


                ]),
          ),
        ));
  }
}
