import 'package:flutter/material.dart';

class LoginPinScreen extends StatelessWidget {
  const LoginPinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25, top: 80),
            child: Text(
              'Welcome Back!',
              style: TextStyle(
                color: Color(0xFF1B1C1E),
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, top: 20),
            child: Text(
              'Log in to your account',
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
        ],
      ),
    );
  }
}
