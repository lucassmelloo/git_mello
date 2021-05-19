import 'dart:convert';

import 'package:http/http.dart' as http;

class OwnerModel {
  final String name;
  final String login;
  final String avatarurl;
  final int publicrepos;
  final int following;

  OwnerModel(
      {this.name,
      this.login,
      this.avatarurl,
      this.publicrepos,
      this.following});

  Future<OwnerModel> setOwner(user) async {
    final response =
        await http.get(Uri.parse("https://api.github.com/users/" + user));
    final owner = OwnerModel.fromJson(response.body);
    return owner;
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'login': login,
      'avatar_url': avatarurl,
      'public_repos': publicrepos,
      'following': following,
    };
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
