import 'package:flutter/material.dart';
import 'package:git_mello/assets/AppColors.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Testing',
      home: new Scaffold(
        //Here you can set what ever background color you need.
        backgroundColor: AppColors.blue,
      ),
    );
  }
}
