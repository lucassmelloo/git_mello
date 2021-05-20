import 'package:flutter/material.dart';
import 'package:git_mello/core/core.dart';
import 'package:git_mello/shared/models/owner_model.dart';

class OwnerCard extends StatelessWidget {
  final OwnerModel owner;
  const OwnerCard({Key? key, required this.owner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 125,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Container(
            width: 125,
            height: 125,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("${owner.avatarurl}"),
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
                    "${owner.name}",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text.rich(TextSpan(
                        text: owner.login,
                        style: TextStyle(fontSize: 20),
                      )),
                      SizedBox(
                        width: 15,
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
                        owner.publicrepos.toString(),
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
                        owner.following.toString(),
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
    );
  }
}
