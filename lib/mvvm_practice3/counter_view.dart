import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  final CounterViewModel _viewModel = Get.put(CounterViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MVVM with GetX'),
      ),
      body: Center(
        child: GetBuilder<CounterViewModel>(
          builder: (_) { // _ 는 CounterViewModel 의 인스턴스
            return Text(
              'Count: ${_.count.value}',
              style: TextStyle(fontSize: 24),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _viewModel.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
