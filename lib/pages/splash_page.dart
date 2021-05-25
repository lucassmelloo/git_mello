import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:git_mello/core/app_gradients.dart';
import 'package:git_mello/core/app_images.dart';
import 'package:git_mello/pages/result_page.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key, required this.userConsult}) : super(key: key);
  final String userConsult;

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((_) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                ResultPage(userConsult: widget.userConsult))));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: AppGradients.linear),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.logo,
                  width: 250,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  widget.userConsult,
                  style: TextStyle(fontSize: 32),
                ),
                LinearProgressIndicator(
                  value: 0.6,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
