import 'package:flutter/material.dart';
import 'package:git_mello/core/app_gradients.dart';
import 'package:git_mello/shared/models/repositories_model.dart';
import 'package:git_mello/shared/widgets/repositories_card.dart';
import 'package:git_mello/shared/widgets/owner_card.dart';
import 'package:git_mello/shared/models/owner_model.dart';

class ResultPage extends StatefulWidget {
  final OwnerModel owner;

  const ResultPage({Key? key, required this.owner}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  List<RepositoryModel>? repositories;

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
                      owner: widget.owner,
                    ),
                    SizedBox(height: 15),
                    RepositoriesCard(
                      repositories: widget.owner.repositories,
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
