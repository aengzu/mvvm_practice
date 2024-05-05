import 'package:flutter/material.dart';
import 'package:mvvm_practice/mvvm_practice2/superhero_view.dart';

import 'package:mvvm_practice/mvvm_practice2/superhero_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SuperheroViewModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marvel API Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SuperheroView(),
    );
  }
}