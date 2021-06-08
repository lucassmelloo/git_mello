import 'dart:convert';

import 'package:git_mello/shared/models/repositories_model.dart';
import 'package:http/http.dart' as http;

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

  Future<OwnerModel> setOwner(user) async {
    const String apiGithub = "https://api.github.com/users/";
    final responseOwner = await http.get(Uri.parse(apiGithub + user));
    final owner = OwnerModel.fromJson(responseOwner.body);
    final responseStarred =
        await http.get(Uri.parse(apiGithub + user + '/starred'));
    owner.starred = json.decode(responseStarred.body).length;
    final responseRepositories =
        await http.get(Uri.parse(apiGithub + user + '/repos'));
    owner.repositories = (json.decode(responseRepositories.body) as List)
        .map((e) => RepositoryModel.fromMap(e))
        .toList();
    return owner;
  }

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
