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
        child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: repositories?.length,
            itemBuilder: (BuildContext context, int index) {
              return RepoCard(
                  repoTitle: repositories?[index].name,
                  language: repositories?[index].language,
                  stars: repositories?[index].stargazersCount);
            }));
  }
}
