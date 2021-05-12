import 'package:flutter/cupertino.dart';
import 'package:git_mello/shared/models/owner_model.dart';
import 'package:git_mello/shared/repositories/result_repository.dart';
import 'package:git_mello/shared/states/result_state.dart';

class ResultController {
  final stateNotifier = ValueNotifier<ResultState>(ResultState.empty);
  set state(ResultState state) => stateNotifier.value = state;
  ResultState get state => stateNotifier.value;

  OwnerModel owner;

  final repository = ResultRepository();

  void getOwner() async {
    state = ResultState.loading;
    owner = await repository.getOwner();
    state = ResultState.sucess;
  }
}
