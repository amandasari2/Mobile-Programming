import 'package:flutter/material.dart';
import 'api_services.dart';

class CountryProvider extends ChangeNotifier {
  final ApiServices apiServices = ApiServices();
  List<Country> cryptoList = [];

  Future<void> fetchData() async {
    try {
      cryptoList = await apiServices.fetchData();
      notifyListeners();
    } catch (e) {
      print('Error: $e');
    }
  }
}
