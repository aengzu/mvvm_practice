import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_practice/getx_practice1/first_page.dart';
import 'package:mvvm_practice/getx_practice1/second_page.dart';
import 'package:mvvm_practice/getx_practice1/third_page.dart';
import 'controllers/tab_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // controller injection
    TapController controller = Get.put(TapController());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black,)
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
      child:Column(
        children: [

          GetBuilder<TapController>(builder: (_){
            // dependency injection
            return Container(
              margin: const EdgeInsets.all(10),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff89dad0)
              ),
              child: Center(child: Text(controller.x.toString(), style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),),),
            );
          }),
          GestureDetector(
            onTap: (){
              controller.increseX();
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff89dad0)
              ),
              child: Center(child: Text("tap", style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),),),
            ),
          ),
          GestureDetector(
            onTap: (){
                Get.to(()=>FirstPage());
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff89dad0)
              ),
              child: Center(child: Text("Go to firstpage", style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),),),
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.to(()=>SecondPage());
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff89dad0)
              ),
              child: Center(child: Text("Second page", style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),),),
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.to(()=>ThirdPage());
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff89dad0)
              ),
              child: Center(child: Text("ThirdPage", style: TextStyle(
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
