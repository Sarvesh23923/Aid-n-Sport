// ignore_for_file: implementation_imports, unnecessary_import, prefer_const_constructors, sort_child_properties_last

import 'package:animate_do/animate_do.dart';
import 'package:ans/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: Column(
          children: [
            FadeInDown(
              delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 800),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 2, vertical: 50),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SvgPicture.asset(
                    'assets/Welcome.svg',
                    width: 100,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1.6),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FadeInUp(
                            delay: const Duration(milliseconds: 700),
                            duration: const Duration(milliseconds: 800),
                            child: Text(
                              "Welcome to Aid'n Sport",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          FadeInUp(
                            delay: const Duration(milliseconds: 900),
                            duration: const Duration(milliseconds: 1000),
                            child: Text(
                              "Join us, train and master in your favourite sport",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  FadeInUp(
                    delay: const Duration(milliseconds: 1000),
                    duration: const Duration(milliseconds: 1100),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Login(),
                                  ));
                            },
                            child: FadeInUp(
                                delay: const Duration(milliseconds: 1100),
                                duration: const Duration(milliseconds: 1200),
                                child: Text('Login')),
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Satoshi'),
                                backgroundColor:
                                    Color.fromARGB(200, 255, 19, 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 16)),
                          ),
                        )
                      ],
                    ),
                  ),
                  FadeInUp(
                    delay: const Duration(milliseconds: 1100),
                    duration: const Duration(milliseconds: 1200),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                color: Color.fromARGB(255, 4, 0, 255),
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
