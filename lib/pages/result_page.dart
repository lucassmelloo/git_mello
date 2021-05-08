import 'package:flutter/material.dart';
import 'package:git_mello/core/app_colors.dart';
import 'package:git_mello/core/app_gradients.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: AppGradients.linear),
        child: SafeArea(
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: 375,
              height: 700,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
