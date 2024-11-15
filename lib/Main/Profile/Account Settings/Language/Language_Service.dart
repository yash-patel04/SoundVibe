import 'dart:convert';
import 'package:http/http.dart' as http;

import 'Language_Model.dart';

class LanguageService {
  Future<List<Language>> fetchLanguages() async {
    final response = await http.get(Uri.parse('https://api.example.com/languages'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((item) => Language(name: item['name'], code: item['code'])).toList();
    } else {
      throw Exception('Failed to load languages');
    }
  }
}