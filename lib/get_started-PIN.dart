import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class GetStartedPinScreen extends StatefulWidget {
  const GetStartedPinScreen({super.key});
  @override
  State<GetStartedPinScreen> createState() => _GetStartedPinScreen();
}

class _GetStartedPinScreen extends State<GetStartedPinScreen> {
  TextEditingController controller = TextEditingController();
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
          Container(
                margin: const EdgeInsets.symmetric(horizontal: 44, vertical: 30),
                  child: PinCodeTextField(
                  appContext: context,
                  controller: controller,
                  length: 4,
                  obscuringCharacter: '*',
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  cursorHeight: 15,
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  textStyle: const TextStyle(color: Color(0xFF0077B6),
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    ],
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    fieldWidth: 55,
                    fieldHeight: 55,
                    disabledColor: Colors.white,
                    inactiveColor: Colors.blue,
                    inactiveFillColor: Colors.transparent,
                    activeColor: Colors.lightBlue,
                    selectedColor: Colors.blueAccent,
                    activeFillColor: Colors.blue,
                    selectedFillColor: Colors.blue,
                    errorBorderColor: Colors.white,
                    borderWidth: 4,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  onChanged: ((value) {
                    if (kDebugMode) {
                      print(value);
                    }
                  }),
                  ),            
              ),
          const SizedBox(height: 40),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/get_started-ConfirmPIN');
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




/*class GetStartedPinScreen extends StatelessWidget {
  const GetStartedPinScreen({super.key});

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
                // ignore: prefer_const_constructors
                padding: EdgeInsets.only(left: 20, top: 40),
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: TextField(
                    controller: controlador,
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
                // ignore: prefer_const_constructors
                padding: EdgeInsets.only(left: 20, top: 40),
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: TextField(
                    controller: controlador2,
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
                // ignore: prefer_const_constructors
                padding: EdgeInsets.only(left: 20, top: 40),
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: TextField(
                    controller: controlador3,
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
                // ignore: prefer_const_constructors
                padding: EdgeInsets.only(left: 20, top: 40),
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: TextField(
                    controller: controlador4,
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
            onTap: () {
              Navigator.pushNamed(context, '/get_started-ConfirmPIN');
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
}*/
