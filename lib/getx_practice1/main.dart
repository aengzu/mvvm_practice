
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mvvm_practice/getx_practice1/home_page.dart';

void main(){
  runApp(MyAPP());
}
class MyAPP extends StatefulWidget {
  const MyAPP({super.key});

  @override
  State<MyAPP> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}
