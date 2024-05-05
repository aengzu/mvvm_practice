import 'package:flutter/material.dart';
import 'package:mvvm_practice/mvvm_practice2/superhero_model.dart';

class CharacterDetailScreen extends StatelessWidget {
  const CharacterDetailScreen({super.key, required this.characterDetail});

  final SuperHero characterDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(characterDetail.name ?? "")),
        body: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Image(
            image: NetworkImage(characterDetail.imageUrl ?? ""),
          ),
        ));
  }
}