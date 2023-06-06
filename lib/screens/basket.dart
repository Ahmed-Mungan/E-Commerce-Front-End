import 'package:flutter/material.dart';
import 'package:front_end_test/widget/theme.dart';

class basket extends StatefulWidget {
  basket({Key? key}) : super(key: key);

  @override
  State<basket> createState() => _basketState();
}

class _basketState extends State<basket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text(
          'Basket',
          style: Themes().headline1.copyWith(
                fontSize: 25,
                color: Colors.black,
              ),
        ),
      ),
    );
  }
}
