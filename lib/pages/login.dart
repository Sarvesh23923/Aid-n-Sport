// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, implementation_imports, unnecessary_import, avoid_unnecessary_containers

import 'package:ans/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var focusNodeEmail = FocusNode();
  var focusNodePassword = FocusNode();
  bool isFocusedEmail = false;
  bool isFocusedPassword = false;

  @override
  void initState() {
    focusNodeEmail.addListener(() {
      setState(() {
        isFocusedEmail = focusNodeEmail.hasFocus;
      });
    });

    focusNodePassword.addListener(() {
      setState(() {
        isFocusedPassword = focusNodePassword.hasFocus;
      });
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => WelcomePage())));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Hey there, you've been missed out",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 160),
            child: Text(
              "Sign in and continue",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: Text(
              "Email",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 0.8),
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: .3),
            decoration: BoxDecoration(
                color: isFocusedEmail ? Colors.white : Color(0xFFF1F0F5),
                borderRadius: BorderRadius.circular(50)),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Your Email',
              ),
              focusNode: focusNodeEmail,
            ),
          )
        ],
      ),
    );
  }
}
