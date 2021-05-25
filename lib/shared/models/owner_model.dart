import 'dart:convert';

import 'package:git_mello/shared/models/starred_model.dart';
import 'package:http/http.dart' as http;

class OwnerModel {
  String? name;
  String? login;
  String? avatarurl;
  int? publicrepos;
  int? following;
  List<StarredModel>? starred;

  OwnerModel(
      {this.login,
      this.name,
      this.avatarurl,
      this.publicrepos,
      this.following,
      this.starred});

  Future<OwnerModel> setOwner(user) async {
    const String apiGithub = "https://api.github.com/users/";
    final response = await http.get(Uri.parse(apiGithub + user));
    final owner = OwnerModel.fromJson(response.body);
    return owner;
  }

  factory OwnerModel.fromMap(Map<String, dynamic> map) {
    return OwnerModel(
        name: map['name'],
        login: map['login'],
        avatarurl: map['avatar_url'],
        publicrepos: map['public_repos'],
        following: map['following'],
        starred: List<StarredModel>.from(
            map['name']?.map((x) => StarredModel.fromMap(x))));
  }

  factory OwnerModel.fromJson(String source) =>
      OwnerModel.fromMap(json.decode(source));
}
