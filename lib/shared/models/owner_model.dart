import 'dart:convert';

import 'package:http/http.dart' as http;

class OwnerModel {
  final String name;
  final String avatarurl;
  final String stars;
  final int publicrepos;
  final int following;

  OwnerModel(
      {this.name,
      this.avatarurl,
      this.stars,
      this.publicrepos,
      this.following});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'stars': stars,
      'avatar_url': avatarurl,
      'public_repos': publicrepos,
      'following': following,
    };
  }

  factory OwnerModel.fromMap(Map<String, dynamic> map) {
    return OwnerModel(
      name: map['name'],
      avatarurl: map['avatar_url'],
      stars: map['starred'],
      publicrepos: map['public_repos'],
      following: map['following'],
    );
  }

  factory OwnerModel.fromJson(String source) =>
      OwnerModel.fromMap(json.decode(source));
}
