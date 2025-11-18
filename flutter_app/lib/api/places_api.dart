import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/place.dart';

class PlacesAPI {
  static const String baseUrl = 'http://127.0.0.1:8000/api/places/';

  static Future<List<Place>> fetchPlaces() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      Iterable jsonList = jsonDecode(response.body);
      return jsonList.map((json) => Place.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load places');
    }
  }
}
