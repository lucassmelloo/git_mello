import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:git_mello/shared/models/owner_model.dart';
import 'package:git_mello/shared/models/repositories_model.dart';

class OwnerController {
  Future<bool> ownerExists(String user) async {
    const String apiGithub = "https://api.github.com/users/";
    final response = await http.get(Uri.parse(apiGithub + user));
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<OwnerModel> setOwner(user) async {
    const String apiGithub = "https://api.github.com/users/";
    final responseOwner = await http.get(Uri.parse(apiGithub + user));
    final owner = OwnerModel.fromJson(responseOwner.body);
    final responseStarred =
        await http.get(Uri.parse(apiGithub + user + '/starred'));
    owner.starred = json.decode(responseStarred.body).length;
    final responseRepositories =
        await http.get(Uri.parse(apiGithub + user + '/repos'));
    owner.repositories = (json.decode(responseRepositories.body) as List)
        .map((e) => RepositoryModel.fromMap(e))
        .toList();
    return owner;
  }
}
