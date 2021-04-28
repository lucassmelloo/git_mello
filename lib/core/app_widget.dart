import 'package:flutter/material.dart';
import 'package:git_mello/pages/loading_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: LoadingPage(),
    );
  }
}
