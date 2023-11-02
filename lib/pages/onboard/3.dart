// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboard3 extends StatelessWidget {
  const Onboard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            SvgPicture.asset(
              "assets/Onboard-3.svg",
              height: 500,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                "Master the sport and become a champion in it",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
