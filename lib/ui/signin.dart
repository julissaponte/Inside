import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../nav1.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      child: Column(
        children: [
          MyInput(),
          Container(height: 20),
          Text('o', style: TextStyle(color: Color(0xFF78869B), fontSize: 15, fontWeight: FontWeight.w500)),
          Container(height: 20),
          SocialSignIn(),
          Container(height: 20),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('No tienes una cuenta? ', style: TextStyle(color: Color(0xFF78869B), fontSize: 13, fontWeight: FontWeight.w500),),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Nav1()
                      ),
                    );
                  },
                  child: Text('Regístrate',
                    style: TextStyle(color: Color(0xFF4F4F4F), fontSize: 13, fontWeight: FontWeight.w800),

                  ),
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

class MyInput extends StatefulWidget {
  const MyInput({Key? key}) : super(key: key);

  @override
  State<MyInput> createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {
  bool oculto = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56,
          child: TextField(
            style: TextStyle(color: Color(0xFF4F4F4F), fontSize: 15, fontWeight: FontWeight.w500),
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelText: 'Correo electrónico',
            ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color:  Color(0xFF78869B).withOpacity(0.25),
                  blurRadius: 20,
                  offset: const Offset(0, 4),
                )
              ]
          ),
        ),
        Container(height: 20),
        Container(
          height: 56,
          child: TextField(
            style: TextStyle(color: Color(0xFF4F4F4F), fontSize: 15, fontWeight: FontWeight.w500),
            obscureText: oculto,
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelText: 'Contraseña',
                suffixIcon: IconButton(
                    icon: Icon(oculto ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash, size: 20, color: Color(0xFF78869B),),
                    onPressed: () {
                      setState(() {
                        oculto = !oculto;
                      });
                    })
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color:  Color(0xFF78869B).withOpacity(0.25),
                blurRadius: 20,
                offset: const Offset(0, 4),
              )
            ]
          ),
        ),
        Container(height: 20),
        Text('Olvidaste tu contraseña?', style: TextStyle(color: Color(0xFF4F4F4F), fontSize: 13, fontWeight: FontWeight.w800)),
        Container(height: 20),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('INICIAR SESIÓN'),
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFA0BFEE),
                textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                fixedSize: const Size(310, 56),
                alignment: Alignment.center,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            ),
          ),
        ),
      ],
    );
  }
}


class SocialSignIn extends StatefulWidget {
  const SocialSignIn({Key? key}) : super(key: key);

  @override
  State<SocialSignIn> createState() => _SocialSignInState();
}

class _SocialSignInState extends State<SocialSignIn> {
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
            label: const Text('INICIAR CON GOOGLE'),
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
            label: const Text('INICIAR CON FACEBOOK'),
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