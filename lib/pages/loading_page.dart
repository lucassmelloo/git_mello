import 'dart:core';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 500,
      width: 500,
      decoration: BoxDecoration(color: Colors.orange),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "GitMello",
                style: TextStyle(),
              ),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Git Username"),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
