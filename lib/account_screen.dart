import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreen();
}

class _AccountScreen extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFF8F8F8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 143,left: 60),
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          
                          )),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromRGBO(0, 119, 182, 100)),
                ),
                onPressed: () => FirebaseAuth.instance.signOut(),
                icon: const Icon(null),
                label: const Text('Sign out',
                    style: TextStyle(color: Color(0xFFF8F8F8), fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
