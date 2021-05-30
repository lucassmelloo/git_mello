import 'dart:convert';

import 'package:http/http.dart' as http;

class RepositoryModel {
  String? name;
  String? language;
  int? stargazersCount;

  RepositoryModel({this.name, this.language, this.stargazersCount});

  Future<RepositoryModel> setRepos(user) async {
    const String apiGithub = "https://api.github.com/users/";
    final responseRepos =
        await http.get(Uri.parse(apiGithub + user + "/repos"));
    final RepositoryModel repos = RepositoryModel.fromJson(responseRepos.body);
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
