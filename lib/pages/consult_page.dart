import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ConsultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.orange),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /* Image(image: FlareActore), */
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
