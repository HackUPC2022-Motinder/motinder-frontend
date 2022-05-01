import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:share_it/controllers/motorbike.dart';

class MotorbikeController {
  static Future<Motorbike> fetchRandomMotorbike() async {
    final response = await http.get(
        Uri.parse('https://motinder-api.herokuapp.com/getRandomMotorbike'));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Motorbike.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load motorbike');
    }
  }
}
