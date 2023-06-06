import 'package:flutter/material.dart';

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return   RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
          text: 'E-',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 12, 82, 233),
          ),
          children: [
            TextSpan(
              text: 'Comm',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 'erce',
              style: TextStyle(
                  color: Color.fromARGB(255, 12, 82, 233), fontSize: 30),
            ),
          ]),
    );
  }
  }
