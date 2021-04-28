import 'package:flutter/material.dart';
import 'package:git_mello/pages/loading_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GitMello",
      home: LoadingPage(),
    );
  }
}
