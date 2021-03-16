import 'dart:convert';

import 'package:covid_19_indonesia/model/covid_global.dart';
import 'package:covid_19_indonesia/model/covid_indonesia.dart';
import 'package:http/http.dart' as http;

import '../model/covid_indonesia.dart';

class API {
  //Covid Indo
  static Future<List<CovidIndo>> fetchCovidIndo() async {
    final apiUrl =
        "https://apicovid19indonesia-v2.vercel.app/api/indonesia/provinsi/alt"; //API Url

    //GET API
    var result = await http.get(apiUrl);

    if (result.statusCode == 200) {
      List jsonObj = json.decode(result.body);
      return jsonObj.map((e) => CovidIndo.fromJson(e)).toList();
    } else {
      throw "Error";
    }
  }

  static Future<List<CovidGlobal>> fetchCovidGlobal() async {
    final apiUrl = "https://api.kawalcorona.com/";
    var result = await http.get(apiUrl);
    if (result.statusCode == 200) {
      List jsonObj = json.decode(result.body);
      return jsonObj.map((e) => CovidGlobal.fromJson(e)).toList();
    } else {
      throw "Error";
    }
  }
}
