import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:the_holy_quran/model/model.dart';

class DataService {
  Future<Surah> surahFetch() async {
    String url = "http://api.alquran.cloud/v1/surah";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      // print(response.body);
      return Surah.fromJson(json.decode(response.body));
    } else {
      throw const Text('Surah can\'t be feched at moment');
    }
  }
}
