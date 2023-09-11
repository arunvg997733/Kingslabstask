import 'package:get/get.dart';
import 'package:kingslabtest/controller/getcontroller.dart';

class ProductController extends GetxController{

  RxMap product = {}.obs;

  getProductdetail(int id)async{
    product.value = await getProductDetails(id);
    update();
  }
}