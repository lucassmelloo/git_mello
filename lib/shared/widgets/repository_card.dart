import 'package:flutter/material.dart';
import 'package:git_mello/core/app_colors.dart';

class RepositoryCard extends StatelessWidget {
  const RepositoryCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 575,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
