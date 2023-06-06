import 'package:flutter/material.dart';

class EntryField extends StatelessWidget {
   final String title;
   final bool isPassword ;
  const EntryField( {super.key ,required this.title, required this.isPassword , });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: Color.fromARGB(255, 208, 208, 209),
              filled: true,
            ),
          )
        ],
      ),
    );
  }
  }
