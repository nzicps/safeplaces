import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/place.dart';

class PlacesAPI {
  static const String baseUrl = 'http://10.0.2.2:8000/api/places/'; // emulator safe

  static Future<List<Place>> fetchPlaces() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      Iterable data = jsonDecode(response.body);
      return data.map((json) => Place.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load places');
    }
  }
}
