import 'package:flutter/material.dart';
import 'package:mybucks/account_screen.dart';
import 'auth_page.dart';
import 'homePage.dart';
import 'welcome_screen.dart';
//import 'login_pin.dart';
import 'package:firebase_core/firebase_core.dart';
// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

String email = '';
final navigatorKey = GlobalKey<NavigatorState>();
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'MyBucks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainPage(),
      initialRoute: '/start',
      routes: {
        '/start': (context) => const WelcomeScreen(),
        '/account': (context) => const AccountScreen(),
      },
    );
  }
}

class MainPage extends StatelessWidget{
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting){
              return const Center(child: CircularProgressIndicator());
          }else if(snapshot.hasError){
              return const Center(child: Text('¡Algo salió mal!'));
          }else if (snapshot.hasData) {
            return const AccountScreen();
          } else {
            return const AuthPage();
          }
        },
      ),
  );
}

/*
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyBucks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/get_started': (context) => const GetStartedScreen(),
        '/get_started-PIN': (context) => const GetStartedPinScreen(),
        '/get_started-ConfirmPIN': (context) => GetStartedConfirmPinScreen(email),
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}

*/