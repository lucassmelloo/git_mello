import 'package:flutter/material.dart';
import 'package:git_mello/core/core.dart';
import 'package:git_mello/shared/models/owner_model.dart';
import 'package:git_mello/shared/models/starred_model.dart';

class OwnerCard extends StatelessWidget {
  final OwnerModel? owner;
  final StarredModel? starred;
  OwnerCard({Key? key, this.owner, this.starred}) : super(key: key);

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
                  image: NetworkImage(owner?.avatarurl ?? ""),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(15)),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(TextSpan(
                    text: owner?.name,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text.rich(TextSpan(
                          text: owner?.login,
                          style: TextStyle(fontSize: 20),
                        )),
                      ),
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.star_border,
                          color: AppColors.gradientoragen,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          text: starred.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                      Text.rich(
                        TextSpan(text: owner?.publicrepos.toString()),
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Following: ",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text.rich(
                        TextSpan(text: owner?.following.toString()),
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
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
