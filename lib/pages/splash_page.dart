import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:git_mello/core/app_gradients.dart';
import 'package:git_mello/core/app_images.dart';
import 'package:git_mello/pages/result_page.dart';
import 'package:git_mello/pages/unresult_page.dart';
import 'package:git_mello/shared/models/owner_model.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key key, this.userConsult}) : super(key: key);
  final String userConsult;

  Future<void> searchOwner(user) async {
    var response =
        await http.get(Uri.http("https://api.github.com/users/", user));
    var data = jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((_) => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ResultPage())));
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
                  userConsult,
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
