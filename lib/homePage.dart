// ignore_for_file: file_names
import 'package:flutter/material.dart';

class MyHomePageScreen extends StatelessWidget {
  const MyHomePageScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8), // color de fondo #F8F8F8
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 25, // posicion izquierda 25
              top: 30, // posicion superior 30
              child: Container(
                height: 54,
                width: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27),
                  color: const Color(0xFF0077B6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), // sombra gris clara
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: const Offset(
                          0, 2), // desplazamiento vertical de la sombra
                    ),
                  ],
                ),
                child: IconButton(
                  icon: Image.asset(
                      'assets/images/user_icon.png'), // imagen del botón
                  onPressed: () {
                    Navigator.pushNamed(context, '/account');
                    // acción al presionar el botón
                  },
                ),
              ),
            ),
            Positioned(
              right: 25, // posicion derecha 25
              top: 30, // posicion superior 44
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFFF8F8F8), // color de fondo blanco
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), // sombra gris clara
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: const Offset(
                          0, 2), // desplazamiento vertical de la sombra
                    ),
                  ],
                ),
                child: IconButton(
                  icon: Image.asset(
                      'assets/images/notification_icon.png'), // imagen del botón
                  onPressed: () {
                    // acción al presionar el botón
                  },
                ),
              ),
            ),
            const Positioned(
              left: 90, // posicion izquierda 100
              top: 45, // posicion superior 30
              child: Text(
                'Hi',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 214,
              width: 343,
              margin: const EdgeInsets.only(top: 111, left: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF0077b6),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Balance",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "\$120000",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 53,
                            fontWeight: FontWeight.w900,
                            letterSpacing: -0.01,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Income",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "\$400000",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.01,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Expenses",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "\$280000",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.01,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
