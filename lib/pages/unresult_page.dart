import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:git_mello/core/core.dart';
import 'package:google_fonts/google_fonts.dart';

class UnresultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(gradient: AppGradients.linear),
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                          "Não encontramos \nesse usuario, tente \nbuscar outro nome",
                          style:
                              TextStyle(fontSize: 28, color: AppColors.white)),
                      SizedBox(
                        width: 20,
                      ),
                      Text(");", style: TextStyle(fontSize: 128)),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
