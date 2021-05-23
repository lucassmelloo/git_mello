import 'dart:convert';

import 'package:http/http.dart' as http;

class StarredModel {
  final List<String>? starredName;

  StarredModel({this.starredName});

  Future<StarredModel> setStarred(user) async {
    const String apiGithub = "https://api.github.com/users/";

    final response = await http.get(Uri.parse(apiGithub + user + "/starred"));
    final starredList = StarredModel.fromJson(response.body);
    return starredList;
  }

  factory StarredModel.fromMap(Map<String, dynamic> map) {
    return StarredModel(
        starredName: List<String>.from(
            map['name']?.map((x) => StarredModel.fromMap(x))));
  }

  factory StarredModel.fromJson(String source) =>
      StarredModel.fromMap(json.decode(source));
}
