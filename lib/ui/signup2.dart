import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:inside/main.dart';

class SignUp2 extends StatefulWidget {
  const SignUp2({Key? key}) : super(key: key);

  @override
  State<SignUp2> createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  bool oculto = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      child: Column(
        children: [
          Container(
            child: Text('Crea tu cuenta en pocos pasos',
              style: TextStyle(color: Color(0xFF4F4F4F), fontSize: 25, fontWeight: FontWeight.w700),),
          ),
          Container(height: 20),
          Container(
            height: 56,
            child: TextField(
              style: TextStyle(color: Color(0xFF78869B), fontSize: 15, fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelText: 'Nombres',
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
              style: TextStyle(color: Color(0xFF78869B), fontSize: 15, fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelText: 'Apellidos',
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
              style: TextStyle(color: Color(0xFF78869B), fontSize: 15, fontWeight: FontWeight.w500),
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
              style: TextStyle(color: Color(0xFF78869B), fontSize: 15, fontWeight: FontWeight.w500),
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
          Container(
            child: Text('Al continuar, indicas que aceptas las Términos de uso y la Política de privacidad de Inside.', style: TextStyle(color: Color(0xFF78869B), fontSize: 13, fontWeight: FontWeight.w500),),
          ),
          Container(height: 20),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => MyApp()
                  ),
                );
              },
              child: Text('CREAR CUENTA'),
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
        ],
      ),
    );
  }
}
