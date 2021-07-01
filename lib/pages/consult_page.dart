import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:git_mello/core/app_colors.dart';
import 'package:git_mello/core/app_gradients.dart';
import 'package:git_mello/core/app_images.dart';
import 'package:git_mello/core/core.dart';
import 'package:git_mello/pages/splash_page.dart';
import 'package:google_fonts/google_fonts.dart';

void callSplashPage(context, userConsult) {
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => SplashPage(userConsult: userConsult)));
}

class ConsultPage extends StatefulWidget {
  @override
  _ConsultPageState createState() => _ConsultPageState();
}

class _ConsultPageState extends State<ConsultPage> {
  var userConsultController = TextEditingController();

  String? userConsult;

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
                      controller: userConsultController,
                      style: GoogleFonts.roboto(),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          hintText: "Git Username",
                          fillColor: AppColors.white,
                          filled: true,
                          suffixIcon: IconButton(
                            onPressed: () {
                              userConsult = "";
                              userConsultController.clear();
                            },
                            icon: Icon(Icons.clear),
                          )),
                      onChanged: (String value) async {
                        userConsult = value;
                      },
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
                          if (userConsult == "" || userConsult == null) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("No user to search!"),
                                    actions: <Widget>[
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("OK"))
                                    ],
                                  );
                                });
                          } else {
                            callSplashPage(context, userConsult);
                          }
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
  //
}
