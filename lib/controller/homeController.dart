import 'package:get/get.dart';


class HomeController extends GetxController{

  var  Gender='Male'.obs;
  var Followers = 100.obs;
  
  @override
//   void onInit() {
//       ever(Gender , (_){
// print('this is the value changed');
//       });
//     super.onInit();
//   }
//
//     void onInit() {
//     everAll([Gender,Followers], (_){
//       print('both value are change in this ever');
//     });
//     super.onInit();
//   }
//   void onInit() {
//        once(Gender, (_){
//
//          print('this is just one thime change the value of this function');
//
//        });
//     super.onInit();
//   }

  // void onInit() {
  //      debounce(Gender, (_){
  //        print('this is this this forth one');
  //      }, time: Duration(seconds: 3));
  //   super.onInit();
  // }





  void change(String changeGender){

    Gender.value = changeGender;
    // update(['status']);

  }




}