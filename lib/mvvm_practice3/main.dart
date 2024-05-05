import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_view.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MVVM with GetX',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => CounterView()),
      ],
    );
  }
}