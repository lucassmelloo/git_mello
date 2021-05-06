import 'package:flutter/material.dart';
import 'package:git_mello/core/app_gradients.dart';
import 'package:git_mello/core/app_images.dart';

class SplashPage extends StatelessWidget {
  /* final String gitUser; */
  @override
  Widget build(BuildContext context) {
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
