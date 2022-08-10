import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:inside/main.dart';
import 'package:inside/nav2.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      child: Column(
        children: [
          SocialSignUp(),
          Container(height: 20),
          Text('o', style: TextStyle(color: Color(0xFF78869B), fontSize: 15, fontWeight: FontWeight.w500)),
          Container(height: 20),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Nav2()
                  ),
                );
              },
              child: Text('CREAR UNA CUENTA'),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFFA0BFEE),
                  textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  fixedSize: const Size(310, 56),
                  alignment: Alignment.center,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),
            ),
          ),
          Container(height: 20),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Si ya tienes una cuenta? ', style: TextStyle(color: Color(0xFF78869B), fontSize: 13, fontWeight: FontWeight.w500),),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => MyApp()
                      ),
                    );
                  },
                  child: Text('Inicia sesión',
                    style: TextStyle(color: Color(0xFF4F4F4F), fontSize: 13, fontWeight: FontWeight.w800),),
                )
              ],
            ),
          ),
          Container(height: 20),
        ],
      ),
    );
  }
}

class SocialSignUp extends StatefulWidget {
  const SocialSignUp({Key? key}) : super(key: key);

  @override
  State<SocialSignUp> createState() => _SocialSignUpState();
}

class _SocialSignUpState extends State<SocialSignUp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.google,
              size: 36, //Icon Size
              color: Colors.white,
            ),
            label: const Text('REGISTRARSE CON GOOGLE'),
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFE86D6D),
                textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                fixedSize: const Size(310, 56),
                alignment: Alignment.centerLeft,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.facebook,
              size: 36, //Icon Size
              color: Colors.white,
            ),
            label: const Text('REGISTRARSE CON FACEBOOK'),
            style: ElevatedButton.styleFrom(
                primary: Color(0xFF3282FA),
                textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                fixedSize: const Size(310, 56),
                alignment: Alignment.centerLeft,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            ),
          ),
        ),
      ],
    );
  }
}