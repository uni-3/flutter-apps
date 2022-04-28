import 'dart:convert';

import 'package:air_pollution/openmap.dart';

import 'package:http/http.dart' as http;

const url = "ex.com";

Future<AirPollution> fetchAirPollution() async {
  String path = "api/path";
  final res = await http.get(Uri.https(url, path));

  if (res.statusCode == 200) {
    return AirPollution.fromJson(jsonDecode(res.body));
  } else {
    throw Exception('failed to load airPollutions');
  }
}

// if parse to list<AirPollution>
/*
List<AirPollution> parseAirPollutions(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<AirPollution>((json) => AirPollution.fromJson(json)).toList();
}
*/