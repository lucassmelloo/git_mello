import 'package:flutter/material.dart';
import 'package:git_mello/core/core.dart';
import 'package:git_mello/shared/models/owner_model.dart';

class OwnerCard extends PreferredSize {
  final OwnerModel owner;

  OwnerCard({this.owner})
      : super(
          preferredSize: Size.fromHeight(125),
          child: Container(
            width: 375,
            height: 125,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage("https://github.com/lucassmelloo.png"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lucas de Mello Vieira",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text.rich(TextSpan(
                              text: owner.username,
                              style: TextStyle(fontSize: 20),
                            )),
                            SizedBox(
                              width: 25,
                            ),
                            Icon(
                              Icons.star_border,
                              color: AppColors.gradientoragen,
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Repositories: ",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "11",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Following: ",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "8",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
}
