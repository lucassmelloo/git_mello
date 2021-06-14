import 'package:flutter/material.dart';

import 'package:git_mello/core/app_gradients.dart';
import 'package:git_mello/core/app_images.dart';
import 'package:git_mello/pages/result_page.dart';
import 'package:git_mello/pages/unresult_page.dart';
import 'package:git_mello/shared/models/owner_model.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key, required this.userConsult}) : super(key: key);
  final String userConsult;

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  OwnerModel? owner;

  @override
  void initState() {
    /*Pesquisar future*/
    Future.delayed(Duration(seconds: 2)).then(
        (_) => Navigator.pushReplacement(context, ownerValidation(owner)));
    super.initState();
    loadInfos();
  }

  ownerValidation(OwnerModel? ownerModel) {
    if (ownerModel == null) {
      return Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => UnresultPage()));
    }
    if (ownerModel.login != null) {
      return Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => ResultPage(owner: owner!)));
    }
  }

  Future loadInfos() async {
    owner = await OwnerModel().setOwner(widget.userConsult);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: AppGradients.linear),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.logo,
                  width: 250,
                ),
                SizedBox(
                  height: 20,
                ),
                LinearProgressIndicator(
                  value: 0.6,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
