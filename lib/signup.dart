import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'main.dart';

class SignUpScreen extends StatefulWidget {
  final VoidCallback onClickedSignIn;

  const SignUpScreen({
    Key? key,
    required this.onClickedSignIn,

  }) : super(key: key);
  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();
  TextEditingController controlador = TextEditingController();
  TextEditingController controlador2 = TextEditingController();
  TextEditingController controlador3 = TextEditingController();
  TextEditingController controlador4 = TextEditingController();
  String c = '';

  @override
  void dispose() {
    emailcontroller.dispose();
    controlador.dispose();
    controlador2.dispose();
    controlador3.dispose();
    controlador4.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 40),
              child: Text(
                'Get Started',
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
                'Use your email to create an account',
                style: TextStyle(
                  color: Color(0xFF474747),
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              height: 70,
              width: 343,
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF90E0EF),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      controller: emailcontroller,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
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
              onTap:
                  signUp /*() {
                Navigator.pushNamed(context, '/home_screen');
              }*/
              ,
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
            const SizedBox(height: 24),
            const Center(
              child: Text(
                'Or',
                style: TextStyle(
                  color: Color(0xFF474747),
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/google_logo.png',
                    height: 35, width: 35),
                const SizedBox(width: 30),
                Image.asset('assets/images/facebook_logo.png',
                    height: 35, width: 35),
                const SizedBox(width: 30),
                Image.asset('assets/images/apple_logo.png',
                    height: 35, width: 35),
              ],
            ),
            const SizedBox(height: 220),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Color(0xFF474747),
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    widget.onClickedSignIn;
                  },
                  child: const Text(
                    " Log in",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future signUp() async {
    c = ('${controlador.text}${controlador2.text}${controlador3.text}${controlador4.text}00');
    if (kDebugMode) {
      print(c);
    }
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()));
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailcontroller.text.trim(), password: c.trim());
      } on FirebaseAuthException catch (e) {
        if (kDebugMode) {
          print(e);
        }
      }
      navigatorKey.currentState!.popUntil((route)=> route.isFirst);
  }
}

/*class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: 
      Container(
        decoration: const BoxDecoration(
          image:DecorationImage(
          image: AssetImage("assets/images/backg.png"),
          fit: BoxFit.cover,
        ),
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 40),
            child: Text(
              'Welcome Back!',
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
              'Log in to your account',
              style: TextStyle(
                color: Color(0xFF474747),
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 70,
            width: 343,
            margin: const EdgeInsets.only(left: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF90E0EF),
            ),
            child: const Row(
              children: [
                SizedBox(width: 20),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 40),
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF0077B6),
                          width: 2.0,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      color: Color(0xFF0077B6),
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 40),
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF0077B6),
                          width: 2.0,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      color: Color(0xFF0077B6),
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 40),
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF0077B6),
                          width: 2.0,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      color: Color(0xFF0077B6),
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 40),
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF0077B6),
                          width: 2.0,
                        ),
                      ),
                    ),
                    style: TextStyle(
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
            onTap: () {
              Navigator.pushNamed(context, '/home_screen');
            },
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
                  'Log in',
                  style: TextStyle(
                    color: Color(0xFFF8F8F8),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Center(
            child: Text(
              'Forgot PIN?',
              style: TextStyle(
                color: Color(0xFF404040),
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Center(
            child: Text(
              'Or',
              style: TextStyle(
                color: Color(0xFF474747),
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/google_logo.png',
                  height: 35, width: 35),
              const SizedBox(width: 30),
              Image.asset('assets/images/facebook_logo.png',
                  height: 35, width: 35),
              const SizedBox(width: 30),
              Image.asset('assets/images/apple_logo.png',
                  height: 35, width: 35),
            ],
          ),
          const SizedBox(height: 220),
          const Center(
            child: Text(
              "Don't have an account? Sign up",
              style: TextStyle(
                color: Color(0xFF474747),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
*/