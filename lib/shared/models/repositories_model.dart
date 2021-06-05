import 'dart:convert';

class RepositoryModel {
  String? name;
  String? language;
  int? stargazersCount;

  RepositoryModel({this.name, this.language, this.stargazersCount});

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
