import 'dart:core';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:git_mello/core/app_colors.dart';
import 'package:git_mello/core/app_images.dart';
import 'package:git_mello/core/core.dart';
import 'package:google_fonts/google_fonts.dart';

class ConsultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: AppColor.orange),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /* Image(image: FlareActore), */
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Git"),
                  Image.asset(
                    AppImages.logo,
                    width: 100,
                  ),
                  Text("Mello")
                ],
              ),
              SizedBox(
                height: 36,
              ),
              Center(
                child: TextField(
                  style: GoogleFonts.roboto(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    hintText: "Git Username",
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
