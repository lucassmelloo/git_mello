import 'dart:convert';

import 'package:http/http.dart' as http;

class OwnerModel {
  String? name;
  String? login;
  String? avatarurl;
  int? publicrepos;
  int? following;
  int? starred;

  OwnerModel(
      {this.login,
      this.name,
      this.avatarurl,
      this.publicrepos,
      this.following,
      this.starred});

  Future<OwnerModel> setOwner(user) async {
    const String apiGithub = "https://api.github.com/users/";
    final responseOwner = await http.get(Uri.parse(apiGithub + user));
    final owner = OwnerModel.fromJson(responseOwner.body);
    final responseStarred =
        await http.get(Uri.parse(apiGithub + user + '/starred'));
    owner.starred = json.decode(responseStarred.body).length;
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
