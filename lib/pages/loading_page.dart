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
      child: Center(
        child: Text("GitMello"),
      ),
    ));
  }
}
