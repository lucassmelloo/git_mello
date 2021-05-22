import 'dart:convert';

import 'package:http/http.dart' as http;

class StarredModel {
  int? starred;

  StarredModel({this.starred});

  Future<StarredModel> setOwner(user) async {
    const String apiGithub = "https://api.github.com/users/";

    final response = await http.get(Uri.parse(apiGithub + user + "/starred"));
    final owner = StarredModel.fromJson(response.body);
    return owner;
  }

  factory StarredModel.fromMap(Map<String, dynamic> map) {
    return StarredModel(
      starred:map['name']
      );
  }

  factory StarredModel.fromJson(String source) =>
      StarredModel.fromMap(json.decode(source));
}
