import 'dart:convert';
import 'package:movie_app/model/sample_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<SampleModel> getMovie() async {
    var client = http.Client();
    var uri = Uri.parse("https://api.nationalize.io?name=michael");
    var response = await client.get(uri, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    if (response.statusCode == 200) {
      try {
        var sample = SampleModel.fromJson(jsonDecode(response.body));
        return sample;
      } catch (e) {
        print(e.toString());
      }
    }
    return null!;
  }
}
