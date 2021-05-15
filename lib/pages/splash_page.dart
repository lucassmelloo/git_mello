import 'package:flutter/material.dart';
import 'package:git_mello/core/app_gradients.dart';
import 'package:git_mello/core/app_images.dart';
import 'package:git_mello/pages/result_page.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key key, this.userConsult}) : super(key: key);
  final String userConsult;

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((_) => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ResultPage())));
    return Container(
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
    );
  }
}
