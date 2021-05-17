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

  factory OwnerModel.fromJson(Map<String, dynamic> json) {
    return OwnerModel(
      name: json['name'],
      avatarurl: json['avatar_url'],
      stars: json['starred'],
      publicrepos: json['public_repos'],
      following: json['following'],
    );
  }
}
