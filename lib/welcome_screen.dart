import 'package:flutter/material.dart';
import 'package:mybucks/main.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  void onPressedGetStartedButton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MainPage()),
    );
  }

  void onPressedLoginButton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MainPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFF8F8F8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 143),
              child: Image.asset(
                'assets/images/billetera.png',
                width: 215,
                height: 262,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                'MANAGE YOUR FINANCE EASILY AND QUICKLY',
                style: TextStyle(
                  color: Color(0xFF1B1C1E),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => onPressedGetStartedButton(context),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF00B4D8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    fixedSize: const Size(149, 58),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => onPressedLoginButton(context),
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF0077B6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    fixedSize: const Size(149, 58),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
