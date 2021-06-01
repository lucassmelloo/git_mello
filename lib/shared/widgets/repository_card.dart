import 'package:flutter/material.dart';
import 'package:git_mello/core/app_colors.dart';
import 'package:git_mello/shared/models/repositories-model.dart';

class RepositoryCard extends StatelessWidget {
  final List<RepositoryModel>? repositories;
  const RepositoryCard({Key? key, this.repositories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 575,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: GridView.count(
        primary: false,
        padding: EdgeInsets.all(8),
        crossAxisSpacing: 100,
        mainAxisSpacing: 50,
        crossAxisCount: 3,
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                color: AppColors.blue, borderRadius: BorderRadius.circular(15)),
          ),
        ],
      ),
    );
  }
}
