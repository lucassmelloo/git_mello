import 'package:git_mello/shared/models/owner_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class OwnerController {
  Future<OwnerModel> setOwner(user) async {
    final response =
        await http.get(Uri.http("https://api.github.com/users/", user));
    final owner = OwnerModel.fromJson(response.body);
    return owner;
  }
}
