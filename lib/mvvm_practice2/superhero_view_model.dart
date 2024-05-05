


import 'package:flutter/cupertino.dart';
import 'package:mvvm_practice/mvvm_practice2/repository.dart';
import 'package:mvvm_practice/mvvm_practice2/superhero_model.dart';

class SuperheroViewModel extends ChangeNotifier{
  final SuperheroRepository _repository = SuperheroRepository();

  List<SuperHero> _superheroes = [];
  bool fetchingData = false;

  List<SuperHero> get superheroes => _superheroes;

  Future<void> fetchSuperheroes() async {
    fetchingData = true;
    try{
      _superheroes = await _repository.getSuperheroes();
      notifyListeners();
    } catch (e) {
      throw Exception('Failed to load superheroes: $e');
    }
    fetchingData = false;
  }

}