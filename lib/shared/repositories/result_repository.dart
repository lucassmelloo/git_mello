import 'package:flutter/services.dart';
import 'package:git_mello/shared/models/owner_model.dart';

class ResultRepository {
  Future<OwnerModel> getOwner() async {
    final response = await rootBundle.loadString("assets/database/owner.json");
    final owner = OwnerModel.fromJson(response);
    return owner;
  }
}
