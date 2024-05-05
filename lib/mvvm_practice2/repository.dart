import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:mvvm_practice/mvvm_practice2/api_service.dart';
import 'package:mvvm_practice/mvvm_practice2/superhero_model.dart';

class SuperheroRepository {
  final ApiService _service = ApiService();

  Future<List<SuperHero>> getSuperheroes() async {
    final response = await _service.fetchSuperheroes();

    if(response.statusCode == 200){
      return List<SuperHero>.from(
        json.decode(response.body).map((x) => SuperHero.fromJson(x))
      );
    }
    else {
      throw Exception('Failed to load superheroes');
    }
  }
}