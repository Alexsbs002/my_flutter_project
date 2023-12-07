import 'package:flutter/material.dart';
import 'first_container.dart';
import 'second_container.dart';
import 'third_container.dart';
import 'fourth_container.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FirstContainer(),
            SecondContainer(),
            ThirdContainer(),
            FourthContainer(),
          ],
        ),
      ),
    );
  }
}