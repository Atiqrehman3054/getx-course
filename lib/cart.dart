import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'full.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('cart screen'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                    child: Text('click the button'),
                    onPressed: () {


                    }),
                MaterialButton(
                    child: Text('Go to next page',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.lightGreenAccent,
                        backgroundColor: Colors.black,
                      ),),
                    onPressed: (){
                            Get.toNamed('/full');
                            // Get.to(Full(),);

                    })
              ],
            ),
          ),
        ));
  }
}
