
import 'package:flutter/material.dart';
import 'package:mvvm_practice/mvvm_practice1/albumView.dart';
import 'package:mvvm_practice/mvvm_practice1/alubmViewModel.dart';
import 'package:provider/provider.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<AlbumViewModel>(
        create: (context) => AlbumViewModel(),
        child: const AlbumView(),
      ),

    );
  }
}