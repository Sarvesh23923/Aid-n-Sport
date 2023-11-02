// ignore_for_file: prefer_const_constructors

import 'package:ans/pages/login.dart';
import 'package:ans/pages/onboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AnimatedLogin());
}

class AnimatedLogin extends StatelessWidget {
  const AnimatedLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboard(),
    );
  }
}
