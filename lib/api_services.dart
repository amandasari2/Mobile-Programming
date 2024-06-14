import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<Country>> fetchData() async {
    final response = await http.get(Uri.parse(
        'https://restcountries.com/v3.1/all?fields=name,flags,capital'));

    if (response.statusCode == 200) {
      final List<dynamic> dataList = json.decode(response.body);

      List<Country> cryptoList =
          dataList.map((data) => Country.fromJson(data)).toList();
      return cryptoList;
    } else {
      throw Exception('Failed to load data');
    }
  }
}

class Country {
  final String nama;
  final String bentuk;
  final String bendera;
  final List<String> capital;

  Country({
    required this.nama,
    required this.bentuk,
    required this.bendera,
    required this.capital,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      nama: json['name']['common'],
      bentuk: json['name']['official'] ?? '',
      bendera: json['flags']['png'],
      capital: List<String>.from(json['capital'] ?? []),
    );
  }
}
