// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:front_end_test/screens/homepage.dart';
import 'package:front_end_test/screens/Authentication/signup.dart';
import 'package:front_end_test/widget/bezierContainer.dart';
import 'package:front_end_test/widget/Authentication/create_account.dart';
import 'package:front_end_test/widget/Authentication/divider.dart';
import 'package:front_end_test/widget/Authentication/facebook_button.dart';
import 'package:front_end_test/widget/Authentication/field.dart';
import 'package:front_end_test/widget/Authentication/submit_button.dart';


class LoginPage extends StatefulWidget {
  LoginPage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {




  Widget _title() {
    return RichText(
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

  Widget _emailPasswordWidget() {
    return Column(
      children:const <Widget>  [
        EntryField( title: "Email id", isPassword: false ),
        EntryField(title: "Password", isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: height,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: -height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: BezierContainer()),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: height * .2),
                  _title(),
                  SizedBox(height: 50),
                  _emailPasswordWidget(),
                  SizedBox(height: 20),
                  SubmitButton(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.centerRight,
                    child: Text('Forgot Password ?',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                  ),
                  divider(),
                  FaceBookButton(),
                  SizedBox(height: height * .055),
                  CreateAccount(),
                ],
              ),
            ),
          ),
          Positioned(top: 40, left: 0, child: BackButton()),
        ],
      ),
    ));
  }
}
