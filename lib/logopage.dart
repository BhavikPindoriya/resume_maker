import 'dart:async';
import 'package:flutter/material.dart';

class logo extends StatefulWidget {
  const logo({Key? key}) : super(key: key);

  @override
  State<logo> createState() => _logoState();
}

class _logoState extends State<logo> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, 'home');
    });
 
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/image/resumelogo.png",
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
