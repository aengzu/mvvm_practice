import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_practice/getx_practice1/controllers/tab_controller.dart';
import 'package:mvvm_practice/getx_practice1/home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width:double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(()=>Container(
              margin: const EdgeInsets.all(10),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff89dad0)
              ),
              child: Center(child: Text("Y value "+Get.find<TapController>().y.value.toString(), style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),),),
            ),),
            GestureDetector(
              onTap: (){
                Get.to(()=>HomePage());
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff89dad0)
                ),
                child: Center(child: Text("X value "+ Get.find<TapController>().x.toString(), style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),),),
              ),
            ),
            GestureDetector(
              onTap: (){
               Get.find<TapController>().increseY();
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff89dad0)
                ),
                child: Center(child: Text("Increase Y ", style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
