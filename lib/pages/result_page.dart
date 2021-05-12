import 'package:flutter/material.dart';
import 'package:git_mello/core/app_gradients.dart';
import 'package:git_mello/shared/controllers/result_controller.dart';
import 'package:git_mello/shared/models/owner_model.dart';
import 'package:git_mello/shared/widgets/repository_card.dart';
import 'package:git_mello/shared/widgets/user_card.dart';

class ResultPage extends StatefulWidget {
  ResultPage({Key key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  final controller = ResultController();

  @override
  void initState() {
    super.initState();

    controller.getOwner();
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: AppGradients.linear),
        child: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            OwnerCard(
              owner: controller.owner,
            ),
            SizedBox(height: 15),
            RepositoryCard(),
          ]),
        ),
      ),
    );
  }
}
