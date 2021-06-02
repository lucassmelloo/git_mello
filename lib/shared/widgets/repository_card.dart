import 'package:flutter/material.dart';
import 'package:git_mello/core/app_colors.dart';
import 'package:git_mello/shared/models/repositories_model.dart';

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
      child: Container(
        width: 300,
        height: 500,
        child: ListView(
          primary: false,
          padding: EdgeInsets.all(15),
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(15)),
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(15)),
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(15)),
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(15)),
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(15)),
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(15)),
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(15)),
            ),
          ],
        ),
      ),
    );
  }
}
