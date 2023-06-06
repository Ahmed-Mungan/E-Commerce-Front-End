import 'package:flutter/material.dart';
import 'package:front_end_test/screens/homepage.dart';

class yellowbutton extends StatefulWidget {
  yellowbutton({Key? key}) : super(key: key);

  @override
  State<yellowbutton> createState() => _yellowbuttonState();
}

class _yellowbuttonState extends State<yellowbutton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        width: 75,
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.amber,
        ),
        child: InkWell(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => homepage()));
          },
        ),
      ),
    );
  }
}
