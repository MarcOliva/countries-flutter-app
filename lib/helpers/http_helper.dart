import 'dart:convert';
import 'dart:io';

import 'package:countries_app/Utils.dart';
import 'package:countries_app/models/country.dart';
import 'package:http/http.dart' as http;

class HttpHelper {
  Future<List<Country>> getAllCountries() async {
    final String url = Utils.BASE_URL + Utils.ALL_COUNTRIES;
    http.Response result = await http.get(url);
    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      List<Country> countries =
          jsonResponse.map<Country>((i) => Country.fromJson(i)).toList();
      return countries;
    } else {
      print("FALLO");
      return null;
    }
  }

  Future<List<Country>> getCountryByName(String value) async {
    final String url = Utils.BASE_URL + Utils.BY_NAME + value;
    http.Response result = await http.get(url);
    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      List<Country> countries =
      jsonResponse.map<Country>((i) => Country.fromJson(i)).toList();
      return countries;
    } else {
      print("FALLO");
      return null;
    }
  }
}
