// ignore_for_file: prefer_const_constructors

import 'package:ans/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  double logoHeight = 0;
  double textFieldsOpacity = 0;
  double textFieldsOffset = 20; // Adjust this value as needed

  @override
  void initState() {
    super.initState();
    // Delayed entrance animations
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        logoHeight = 120; // Adjust this value as needed
      });
    });
    Future.delayed(const Duration(milliseconds: 800), () {
      setState(() {
        textFieldsOpacity = 1;
        textFieldsOffset = 0; // Adjust this value as needed
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return WelcomePage();
            }));
          },
          icon: Icon(
            IconlyLight.arrow_left_2,
            color: Colors.black,
            size: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 35, left: 35),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: logoHeight,
                child: Image.asset(
                  "assets/Aid-Nsport.png",
                  height: 120,
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 75, right: 60),
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 500),
                opacity: textFieldsOpacity,
                child: Container(
                  transform: Matrix4.translationValues(0, textFieldsOffset, 0),
                  child: Text(
                    "Login To Your Account",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 500),
                opacity: textFieldsOpacity,
                child: Container(
                  transform: Matrix4.translationValues(0, textFieldsOffset, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 500),
                opacity: textFieldsOpacity,
                child: Container(
                  transform: Matrix4.translationValues(0, textFieldsOffset, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 230),
              child: AnimatedOpacity(
                  opacity: textFieldsOpacity,
                  duration: Duration(milliseconds: 500),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 0, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ))),
            ),
            SizedBox(
              height: 5,
            ),
            // "Sign In" button
            AnimatedOpacity(
              duration: Duration(milliseconds: 500),
              opacity: textFieldsOpacity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  primary: const Color.fromARGB(255, 254, 37, 37),
                  textStyle: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {
                  // Add your sign-in logic here
                },
                child: Text("Login"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            AnimatedOpacity(
              opacity: textFieldsOpacity,
              duration: const Duration(milliseconds: 1200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 0, 0),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
