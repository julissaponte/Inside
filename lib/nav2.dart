import 'package:flutter/material.dart';
import 'package:inside/ui/signin.dart';
import 'package:inside/ui/signup.dart';
import 'package:inside/ui/signup2.dart';

class Nav2 extends StatefulWidget {
  const Nav2({Key? key}) : super(key: key);

  @override
  State<Nav2> createState() => _Nav2State();
}

class _Nav2State extends State<Nav2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inside',
      theme: ThemeData(
        primaryColor: Color(0xFFA0BFEE),
        fontFamily: 'YuGothic',
      ),
      home: Scaffold(
          body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  Container(height: 152,),
                  Container(child: Image.asset('assets/images/logo.png', height: 128, width: 118),),
                  Container(height: 56,),
                  Container(child: SignUp2(),),
                ],
              )
          )
      ),
    );
  }
}
