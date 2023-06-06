

import 'package:flutter/material.dart';

class sliverAppbar extends StatefulWidget {
  sliverAppbar({Key? key}) : super(key: key);

  @override
  State<sliverAppbar> createState() => _sliverAppbarState();
}

class _sliverAppbarState extends State<sliverAppbar> {
  double top = 0.0;
  double top2 = 0.0;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      stretch: true,
      actions: [
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.amber,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.notifications,
            color: Colors.amber,
          ),
          onPressed: () {},
        ),
      ],
      expandedHeight: 220.0,
      floating: true,
      pinned: true,
      // snap: false,
      elevation: 5,
      centerTitle: true,

      title: AnimatedOpacity(
        opacity: top2 > 120 ? 0 : 1,
        duration: Duration(milliseconds: 300),
        child: Text(
          'Home Page',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.amber,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          top = constraints.biggest.height;
          Future.delayed(Duration.zero, () {
            setState(() {
              top2 = top;
            });
          });

          return FlexibleSpaceBar(
            centerTitle: true,
            title: AnimatedOpacity(
              opacity: top < 120 ? 0 : 1,
              duration: Duration(milliseconds: 300),
              child: Text(
                'What are you reading today ?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
            ),
            background: Image.network('https://images.unsplash.com/photo-1607522370275-f14206abe5d3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2021&q=80s')
          );
        },
      ),
    );
  }
}