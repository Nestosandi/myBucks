import 'package:flutter/material.dart';
import 'package:mybucks/get_started-ConfirmPIN.dart';
import 'package:mybucks/main.dart';

/*void onPressedGetStartedButton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const GetStartedPinScreen()),
    );
  }*/
TextEditingController controlador = TextEditingController();

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

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
              padding: EdgeInsets.only(left: 25, top: 60),
              child: Text(
                'Get started',
                style: TextStyle(
                  color: Color(0xFF1B1C1E),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 16),
              child: Text(
                'Use your email to create an account',
                style: TextStyle(
                  color: Color(0xFF474747),
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 40),
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
                        hintText: 'Name',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
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
                  // ignore: prefer_const_constructors
                  SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      controller: controlador,
                      textInputAction: TextInputAction.next,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                email = controlador.text;
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => GetStartedConfirmPinScreen(email)));
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
                    'Continue',
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainPage()),
                    );
                  },
                  child: const Text(
                    "Log in",
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
}
