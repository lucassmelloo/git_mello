import 'package:flutter/material.dart';
import 'package:git_mello/core/app_colors.dart';

class RepoCard extends StatelessWidget {
  String? repoTitle;
  String? language;
  int? stars;
  RepoCard({Key? key, this.repoTitle, this.language, this.stars})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
              color: AppColors.blue, borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    text: repoTitle,
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: "language: ",
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 20,
                          ),
                          children: [
                            TextSpan(
                              text: language,
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                      overflow: TextOverflow.ellipsis,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "stars: ",
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 20,
                          ),
                          children: [
                            TextSpan(
                              text: stars.toString(),
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
