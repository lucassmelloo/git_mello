import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;

class RepositoryModel {
  String? name;
  String? language;
  int? stargazersCount;

  RepositoryModel({this.name, this.language, this.stargazersCount});

  setRepos(user) async {
    const String apiGithub = "https://api.github.com/users/";
    final response = await http.get(Uri.parse(apiGithub + user + "/repos"));
    final List<RepositoryModel> repos = (json.decode(response.body) as List)
        .map((e) => RepositoryModel.fromJson(e))
        .toList();
    return repos;
  }

  factory RepositoryModel.fromMap(Map<String, dynamic> map) {
    return RepositoryModel(
      name: map['name'],
      language: map['language'],
      stargazersCount: map['stargazers_count'],
    );
  }

  factory RepositoryModel.fromJson(String source) =>
      RepositoryModel.fromMap(json.decode(source));
}
