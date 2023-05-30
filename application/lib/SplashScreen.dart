import 'package:application/Page1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
  
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Page1()));
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffFFB71B),
      body: Center(
        child: Container(
          child: Text("تطبيق أذكار",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }


}