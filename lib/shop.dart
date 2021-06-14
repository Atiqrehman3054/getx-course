import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cart.dart';

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('shop screen screen'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                MaterialButton(
                    child: Text('Go to cart page',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.lightGreenAccent,
                        backgroundColor: Colors.black,
                      ),),
                    onPressed: (){

                           // Get.off(Cart());
                      // Get.toNamed('/cart');
                      Get.offAll(Cart());

                    }),
                MaterialButton(

                    child: Text('Go to back page',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.lightGreenAccent,
                        backgroundColor: Colors.black,
                      ),),
                    onPressed: (){

                      Get.back();

                    }),
                // Text(Get.arguments),
                Text('${Get.parameters['Laptop']}'),
                MaterialButton(
                    child: Text('this is data send to baxk side'),
                    onPressed: (){
                  Get.back();
                })
              ],
            ),
          ),
        ));
  }
}
