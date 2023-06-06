import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:front_end_test/new%20product/productcard.dart';
import 'package:front_end_test/recommended/sec_productcard.dart';
import 'package:front_end_test/screens/favscreen.dart';
import 'package:front_end_test/screens/Authentication/login.dart';
import 'package:front_end_test/screens/Authentication/signup.dart';
import 'package:front_end_test/widget/theme.dart';
import 'package:front_end_test/widget/yellowbutton.dart';
import 'detailsscreen.dart';
import '../new product/product.dart';
import '../recommended/sec_product.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'drawerscreen.dart';

void main() => runApp(MaterialApp(
    builder: (context, child) {
      return Directionality(textDirection: TextDirection.ltr, child: child!);
    },
    title: 'GNav',
    theme: ThemeData(
      primaryColor: Colors.grey[800],
    ),
    home: homepage()));

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<Product> product = [
      Product(
          image:
              'https://images.unsplash.com/photo-1549298916-f52d724204b4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2013&q=80',
          title: 'rrrrr',
          subtitle: 'jjjj',
          rate: "iii",
          details: 'vv'),
      Product(
          image:
              'https://images.unsplash.com/photo-1607522370275-f14206abe5d3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2021&q=80s',
          title: 'rrrrr',
          subtitle: 'jjjj',
          rate: "iii",
          details: 'vv'),
      Product(
          image:
              'https://images.unsplash.com/photo-1607522370275-f14206abe5d3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2021&q=80s',
          title: 'rrrrr',
          subtitle: 'jjjj',
          rate: "iii",
          details: 'vv'),
    ];

    List<secProduct> SecProduct = [
      secProduct(
        image:
            'https://images.unsplash.com/photo-1607522370275-f14206abe5d3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2021&q=80s',
        title: 'rrrrr',
        subtitle: 'jjjj',
        price: "iii",
        shopname: "iii",
      ),
      secProduct(
        image:
            'https://images.unsplash.com/photo-1607522370275-f14206abe5d3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2021&q=80s',
        title: 'rrrrr',
        subtitle: 'jjjj',
        price: "iii",
        shopname: "iii",
      ),
      secProduct(
        image:
            'https://images.unsplash.com/photo-1607522370275-f14206abe5d3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2021&q=80s',
        title: 'rrrrr',
        subtitle: 'jjjj',
        price: "iii",
        shopname: "iii",
      ),
    ];

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.black,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black,
                tabs: [
                  GButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => homepage()),
                      );
                    },
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => favscreen()),
                      );
                    },
                    icon: Icons.favorite,
                    text: 'Likes',
                  ),
             
                  GButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    icon: Icons.person,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                 
                  });
                },
              ),
            ),
          ),
        ),
        drawer: Drawer(),
        appBar: AppBar(
          title: Text(
            'Fav Page',
            style: Themes().headline1.copyWith(
                  fontSize: 25,
                  color: Colors.black,
                ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 112, 148, 223),
          elevation: 0,
        ),




        body: SafeArea(
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore',
                    style: Themes().headline3.copyWith(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'best product for you ',
                    style: Themes().headline3.copyWith(
                          color: Color.fromARGB(255, 12, 82, 233),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  /* Container(
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueGrey[100],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 270),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search_rounded),
                      ),
                    ),
                  ), */
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'New Products',
                        style: Themes().headline1.copyWith(
                              fontSize: 20,
                            ),
                      ),
                      Text(
                        'See All',
                        style: Themes().headline1.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.blueGrey.withOpacity(.6),
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true, // Use  children total size
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(
                        left: 8.0,
                        top: 10.0,
                        right: 8.0,
                      ),
                      itemCount: product.length,
                      itemBuilder: (context, index) {
                        return productcard(product: product[index]);
                      },
                    ),
                  ),
                  /*       SizedBox(
                      height: 10,
                    ),
                    Container(
                      // margin: EdgeInsets.only(bottom: 290),
                      height: 1,
                      width: 400,
                      decoration: BoxDecoration(color: Colors.transparent),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                        Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Categories',
                          style: Themes().headline1.copyWith(
                                fontSize: 20,
                              ),
                        ),
                      ],
                    ), */
                  SizedBox(
                    height: 10,
                  ),
                  /*  Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return yellowbutton();
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),  */
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommended',
                        style: Themes().headline1.copyWith(
                              fontSize: 20,
                            ),
                      ),
                      Text(
                        'See All',
                        style: Themes().headline1.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.blueGrey.withOpacity(.6),
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true, // Use  children total size
                      scrollDirection: Axis.vertical,
                      padding: EdgeInsets.only(
                        left: 8.0,
                        top: 10.0,
                        right: 8.0,
                      ),
                      itemCount: SecProduct.length,
                      itemBuilder: (context, index) {
                        return secproductcard(SecProduct: SecProduct[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
