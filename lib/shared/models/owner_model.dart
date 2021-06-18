import 'dart:convert';

import 'package:git_mello/shared/models/repositories_model.dart';

class OwnerModel {
  String? name;
  String? login;
  String? avatarurl;
  int? publicrepos;
  int? following;
  int? starred;
  List<RepositoryModel>? repositories;

  OwnerModel(
      {this.login,
      this.name,
      this.avatarurl,
      this.publicrepos,
      this.following,
      this.starred,
      this.repositories});

  factory OwnerModel.fromMap(Map<String, dynamic> map) {
    return OwnerModel(
      name: map['name'],
      login: map['login'],
      avatarurl: map['avatar_url'],
      publicrepos: map['public_repos'],
      following: map['following'],
    );
  }

  factory OwnerModel.fromJson(String source) =>
      OwnerModel.fromMap(json.decode(source));
}
