import 'package:flutter/material.dart';
import 'package:inside/ui/signin.dart';
import 'package:inside/ui/signup.dart';
import 'package:inside/ui/signup2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                Container(child: SignIn(),),
              ],
            )
          )
      ),
    );
  }
}
