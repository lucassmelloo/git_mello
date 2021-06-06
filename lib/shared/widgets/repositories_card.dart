import 'package:flutter/material.dart';
import 'package:git_mello/core/app_colors.dart';
import 'package:git_mello/shared/models/repositories_model.dart';
import 'package:git_mello/shared/widgets/repo_card.dart';

class RepositoriesCard extends StatelessWidget {
  final List<RepositoryModel>? repositories;
  const RepositoriesCard({Key? key, this.repositories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        height: 575,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListView(padding: EdgeInsets.all(10), children: [
          RepoCard(),
          SizedBox(
            height: 10,
          ),
          RepoCard(),
          SizedBox(
            height: 10,
          ),
          RepoCard(),
          SizedBox(
            height: 10,
          ),
          RepoCard(),
          SizedBox(
            height: 10,
          ),
          RepoCard(),
          SizedBox(
            height: 10,
          ),
          RepoCard(),
        ]));
  }
}
