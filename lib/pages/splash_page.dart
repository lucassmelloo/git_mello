import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:git_mello/core/app_colors.dart';

import 'package:git_mello/core/app_gradients.dart';
import 'package:git_mello/core/app_images.dart';
import 'package:git_mello/pages/result_page.dart';
import 'package:git_mello/pages/unresult_page.dart';
import 'package:git_mello/shared/controllers/owner_controller.dart';
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
    loadInfos();
    super.initState();
  }

  Future loadInfos() async {
    if (await OwnerController().ownerExists(widget.userConsult)) {
      owner = await OwnerController().setOwner(widget.userConsult);
      return Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => ResultPage(owner: owner!)));
    } else {
      return Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => UnresultPage()));
    }
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
            child: Stack(
              children: [
                Center(
                  child: SpinKitDualRing(
                    color: AppColors.blue,
                    size: 350,
                  ),
                ),
                Center(
                  child: Image.asset(
                    AppImages.logo,
                    width: 250,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
