import 'package:flutter/material.dart';
import 'package:git_mello/pages/consult_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Git_Mello",
      home: ConsultPage(),
    );
  }
}
