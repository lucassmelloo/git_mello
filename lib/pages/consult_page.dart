import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:git_mello/core/app_colors.dart';
import 'package:git_mello/core/app_gradients.dart';
import 'package:git_mello/core/app_images.dart';
import 'package:git_mello/core/core.dart';
import 'package:git_mello/pages/splash_page.dart';
import 'package:google_fonts/google_fonts.dart';

class ConsultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(gradient: AppGradients.linear),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.logo,
                width: 300,
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Column(
                  children: [
                    TextField(
                      style: GoogleFonts.roboto(),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          hintText: "Git Username",
                          fillColor: AppColors.white,
                          filled: true,
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.clear),
                          )),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(25)),
                      child: IconButton(
                        icon: Icon(Icons.navigate_next),
                        color: AppColors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SplashPage()));
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
