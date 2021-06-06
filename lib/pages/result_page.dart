import 'package:flutter/material.dart';
import 'package:git_mello/core/app_gradients.dart';
import 'package:git_mello/shared/models/repositories_model.dart';
import 'package:git_mello/shared/widgets/repositories_card.dart';
import 'package:git_mello/shared/widgets/owner_card.dart';
import 'package:git_mello/shared/models/owner_model.dart';

class ResultPage extends StatefulWidget {
  final String userConsult;

  const ResultPage({Key? key, required this.userConsult}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

validationOwner(OwnerModel? owner) {
  if (owner != null) return owner;
}

class _ResultPageState extends State<ResultPage> {
  OwnerModel? owner;
  List<RepositoryModel>? repositories;

  @override
  void initState() {
    super.initState();
    loadInfos();
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
        child: Column(
          children: [
            SizedBox(height: 10),
            SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OwnerCard(
                      owner: owner,
                    ),
                    SizedBox(height: 15),
                    RepositoriesCard(
                      repositories: owner?.repositories,
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
