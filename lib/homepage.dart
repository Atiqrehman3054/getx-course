
import 'package:course/controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Homepage extends StatelessWidget {
   HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('home page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
                child: Text('click the button'),
                onPressed: () {
                  Get.snackbar(
                    "title",
                    "my name is atiq rehman",
                    borderRadius: 30,
                    snackPosition: SnackPosition.BOTTOM,
                    colorText: Colors.red,
                    backgroundColor: Colors.yellow,
                    icon: Icon(Icons.message),
                  );
                }),
            MaterialButton(
                child: Text(
                  'Go to next page',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.lightGreenAccent,
                    backgroundColor: Colors.black,
                  ),
                ),
                onPressed: () async {

                  Get.toNamed('/dfdf/Dell');

       

                 // var data = Get.to(Shop(),
                 //      arguments:
                 //          'this data send to shop screen and the other page recvie the data on this screen');
                 // print(data);
                }),

            GetBuilder<HomeController>(
              id: 'follow',
                builder: (_){

              print('this is the follow wigdet');
              return Text('this is the followers: ${homeController.Followers}');
            }),




            // GetX<HomeController>(
            //
            //     builder: (_){
            // }),

            Text('if your gender is change click the button"Change"'),
            MaterialButton(
              child: Text('Change'),
                onPressed: (){
              homeController.change('Female');
            }),

            Obx((){

              print('this is the status widget');
              return Text('My gender is: ${homeController.Gender.value}');

            }),









            // GetBuilder<HomeController>(builder: (_){
            //   return  Text('user status:${homeController.status}');
            // }),
            //
            // MaterialButton(
            //   child: Text('logout'),
            //     onPressed: (){
            //
            //     homeController.updateStatus('Offline');
            //
            // }),
          ],
        ),
      ),
    ));
  }
}
