import "package:flutter/material.dart";
import 'package:provider_demo/json_datamodel.dart';
import 'package:provider_demo/remote_service.dart';

class JsonProvider extends ChangeNotifier {
  List<JsonModel> listdata = [];

  Future<void> getDataFromUrl() async {
    listdata = await RemoteService().getData();
    notifyListeners();
  }
}
