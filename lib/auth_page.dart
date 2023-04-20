import 'package:flutter/material.dart';
import 'package:mybucks/login.dart';
import 'SignUp.dart';


class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>{
  bool isLogin = true;
  @override
  Widget build (BuildContext context) => isLogin 
  ? LoginScreen(onClickedSignUp: toggle) 
  : SignUpScreen(onClickedSignIn: toggle);

  void toggle() => setState(() => isLogin = !isLogin);
  }