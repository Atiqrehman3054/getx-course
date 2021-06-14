import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homepage.dart';

class Full extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'HomePage',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('click for Snackbar'),
              onPressed: () {
                Get.snackbar('Name', 'Atiq Rehman',
                    // snackPosition: SnackPosition.BOTTOM,
                    colorText: Colors.red,
                    backgroundColor: Colors.yellow,
                    borderRadius: 20,
                    icon: Icon(
                      Icons.message,
                      color: Colors.red,
                    ),
                    margin: EdgeInsets.all(10));
              },
            ),
            MaterialButton(
                child: Text('click for defaultDalog'),
                onPressed: () {
                  Get.defaultDialog(
                    title: 'ALet',
                    content: Text('are you sure exit the Application'),
                    backgroundColor: Colors.yellow,
                    textCancel: 'No',
                    textConfirm: 'Yes',
                    confirmTextColor: Colors.white,
                    onCancel: () {},
                    barrierDismissible: false,
                  );
                }),
            MaterialButton(
                child: Text('click for the buttomsheet'),
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircularProgressIndicator(),
                          Icon(
                            Icons.message,
                            color: Colors.black,
                            size: 50,
                          ),
                        ],
                      ),
                    ),
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    isDismissible: false,
                  );
                }),
            MaterialButton(
                child:
                Text('go to back page'),

                onPressed: (){
                  Get.back();
                }
            ),


          ],
        ),
      ),
    );
  }
}
