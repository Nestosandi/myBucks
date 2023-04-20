//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:mybucks/get_started.dart';

// ignore: must_be_immutable
class GetStartedConfirmPinScreen extends StatefulWidget {
  String email;
  GetStartedConfirmPinScreen(this.email, {super.key});
  
  @override
  State<GetStartedConfirmPinScreen> createState() => _GetStartedConfirmPinScreen();
}

class _GetStartedConfirmPinScreen extends State<GetStartedConfirmPinScreen> {
TextEditingController controlador = TextEditingController();
TextEditingController controlador2 = TextEditingController();
TextEditingController controlador3 = TextEditingController();
TextEditingController controlador4 = TextEditingController();
String c = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: const Color(0xFFF8F8F8),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 80),
            child: Text(
              'Create your PIN',
              style: TextStyle(
                color: Color(0xFF1B1C1E),
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 20),
            child: Text(
              'Type a pin for your account',
              style: TextStyle(
                color: Color(0xFF474747),
                fontSize: 16,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 40),
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: TextField(
                    controller: controlador,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: const InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF0077B6),
                          width: 2.0,
                        ),
                      ),
                    ),
                    style: const TextStyle(
                      color: Color(0xFF0077B6),
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 40),
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: TextField(
                    controller: controlador2,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: const InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF0077B6),
                          width: 2.0,
                        ),
                      ),
                    ),
                    style: const TextStyle(
                      color: Color(0xFF0077B6),
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 40),
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: TextField(
                    controller: controlador3,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: const InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF0077B6),
                          width: 2.0,
                        ),
                      ),
                    ),
                    style: const TextStyle(
                      color: Color(0xFF0077B6),
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 40),
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: TextField(
                    controller: controlador4,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: const InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF0077B6),
                          width: 2.0,
                        ),
                      ),
                    ),
                    style: const TextStyle(
                      color: Color(0xFF0077B6),
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          GestureDetector(
            onTap: () {},/* () {
              Navigator.pushNamed(context, '/login');
              
              if (kDebugMode) {
                print(c);
                print(widget.email);
              }

            },*/
            child: Container(
              height: 70,
              width: 343,
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: const Color(0xFF0077B6),
              ),
              child: const Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Color(0xFFF8F8F8),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 220),
          const Center(
            child: Text(
              'Already have an account? Log in',
              style: TextStyle(
                color: Color(0xFF474747),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*class GetStartedConfirmPinScreen extends StatelessWidget {
  const GetStartedConfirmPinScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
  }
}*/
