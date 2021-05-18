import 'dart:convert';

import 'package:http/http.dart' as http;

class OwnerModel {
  final String name;
  final String avatarurl;
  final int publicrepos;
  final int following;

  OwnerModel({this.name, this.avatarurl, this.publicrepos, this.following});

  setOwner(user) async {
    final username = user;
    final response =
        await http.get(Uri.http("https://api.github.com/users/", username));
    final owner = OwnerModel.fromJson(response.body);
    return owner;
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'avatar_url': avatarurl,
      'public_repos': publicrepos,
      'following': following,
    };
  }

  factory OwnerModel.fromMap(Map<String, dynamic> map) {
    return OwnerModel(
      name: map['name'],
      avatarurl: map['avatar_url'],
      publicrepos: map['public_repos'],
      following: map['following'],
    );
  }

  factory OwnerModel.fromJson(String source) =>
      OwnerModel.fromMap(json.decode(source));
}
