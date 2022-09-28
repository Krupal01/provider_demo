import 'package:http/http.dart' as http;

import 'json_datamodel.dart';

class RemoteService {
  static http.Client httpClient = http.Client();

  Future<List<JsonModel>> getData() async {
    List<JsonModel> list = [];

    try {
      var stream = await httpClient
          .get(Uri.http("jsonplaceholder.typicode.com", "/posts"));
      if (stream.statusCode == 200) {
        list = jsonModelFromJson(stream.body);
      }
    } catch (e) {
      print(e.toString());
    }
    return list;
  }
}
