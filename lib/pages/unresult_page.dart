import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:git_mello/core/core.dart';

class UnresultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(gradient: AppGradients.linear),
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            AppImages.logo,
                            width: 250,
                          ),
                          Text(";(", style: TextStyle(fontSize: 100)),
                          SizedBox(
                            height: 38,
                          ),
                          Text(
                              "Me desculpe, não encontrei ninguem com esse nome!",
                              style: TextStyle(
                                  fontSize: 28, color: AppColors.white)),
                        ],
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(15)),
                        child: BackButton(
                          color: AppColors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
