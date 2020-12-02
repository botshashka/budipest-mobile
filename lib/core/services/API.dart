import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';

import '../models/Toilet.dart';

class API {
  static http.Client client;
  static final url = "https://budipest-api.herokuapp.com/api/v1";

  static void init() {
    print("API init");
    client = http.Client();
  }

  static Future<List<Toilet>> getToilets(LocationData userLocation) async {
    print("API gettoilets");
    List<Toilet> data;

    try {
      final response = await client.get('$url/toilets');
      final body = json.decode(response.body)["data"];

      data = body.map<Toilet>((toiletRaw) {
        Toilet toilet = Toilet.fromMap(Map.from(toiletRaw));
        toilet.calculateDistance(userLocation.latitude, userLocation.longitude);
        return toilet;
      }).toList();

      data.sort((a, b) => a.distance.compareTo(b.distance));
    } catch (error) {
      print(error);
    }

    return data;
  }

  static Future<Toilet> getToilet(String id) async {
    print("API gettoilet");
    Toilet data;

    try {
      final response = await client.get('$url/toilets/$id');
      final body = json.decode(response.body);

      data = Toilet.fromMap(body);
    } catch (error) {
      print(error);
    }

    return data;
  }

  static Future<Toilet> addToilet(Toilet toilet) async {
    print("API addtoilet");
    dynamic body;

    try {
      final response = await client.post(
        '$url/toilets',
        headers: {
          "Accept": "application/json",
          "Content-type": "application/json"
        },
        body: utf8.encode(json.encode(toilet.toJson())),
      );

      body = json.decode(response.body);
    } catch (error) {
      print(error);
    }

    return Toilet.fromMap(body);
  }
}
