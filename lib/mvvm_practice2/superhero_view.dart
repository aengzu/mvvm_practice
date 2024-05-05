import 'package:flutter/material.dart';
import 'package:mvvm_practice/mvvm_practice2/superhero_model.dart';
import 'package:mvvm_practice/mvvm_practice2/superhero_view_model.dart';

import 'package:provider/provider.dart';

import 'character_detail_screen.dart';
import 'list_card.dart';

class SuperheroView extends StatelessWidget {
  const SuperheroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Marvel Superheroes'),
      ),
      body: Consumer<SuperheroViewModel>(builder: (context, viewModel, child) {
        if (!viewModel.fetchingData && viewModel.superheroes.isEmpty) {
          Provider.of<SuperheroViewModel>(context, listen: false)
              .fetchSuperheroes();
        }
        if (viewModel.fetchingData) {
          // While data is being fetched
          return const LinearProgressIndicator();
        } else {
          // If data is successfully fetched
          List<SuperHero> heroes = viewModel.superheroes;
          return Column(
            children: [
              Flexible(
                  child: ListView.builder(
                    itemCount: heroes.length,
                    itemBuilder: (context, index) {
                      return ListCard(character: heroes[index]);
                    },
                  ))
            ],
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<SuperheroViewModel>(context, listen: false)
              .fetchSuperheroes();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
