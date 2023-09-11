import 'package:get/get.dart';
import 'package:kingslabtest/controller/getcontroller.dart';

class HomeScreenController extends GetxController{
  RxList productList = [].obs;
  getList()async{
    final data =await  getHomedetails();
    productList.value =await data['products'];
    update();
  }
}