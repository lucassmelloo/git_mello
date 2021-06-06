import 'package:flutter/material.dart';
import 'package:git_mello/core/app_colors.dart';
import 'package:git_mello/shared/models/repositories_model.dart';

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
                      text: "rocketseat-nlw5-flutter",
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
                                text: "Dart",
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
                                text: "2",
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
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: AppColors.blue, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Respoitorio"),
                Text("language: Dart"),
                Text("Respoitorio"),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: AppColors.blue, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Respoitorio"),
                Text("language: Dart"),
                Text("Respoitorio"),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: AppColors.blue, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Respoitorio"),
                Text("language: Dart"),
                Text("Respoitorio"),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: AppColors.blue, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Respoitorio"),
                Text("language: Dart"),
                Text("Respoitorio"),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: AppColors.blue, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Respoitorio"),
                Text("language: Dart"),
                Text("Respoitorio"),
              ],
            ),
          ),
        ]));
  }
}
