import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kingslabtest/controller/product_controller.dart';
import 'package:kingslabtest/core/constant.dart';
import 'package:kingslabtest/view/screen_edit.dart';

class ProductScreen extends StatelessWidget {
   ProductScreen({super.key,required this.id});
  int id;
  final getProduct = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
  getProduct.getProductdetail(id);
    return  Scaffold(
      appBar: AppBar(
        title: Text('Product'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductEditScreen(data: getProduct.product.value),));
          }, icon: Icon(Icons.edit))
        ],
      ),
      body: GetBuilder<ProductController>(builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          children: [
            Text(controller.product['title'],style: TextStyle(fontSize: 20),overflow: TextOverflow.clip,),
            Kheight,
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(controller.product['images'][0]))
              ),
            ),
            Kheight,
            Text('Rs - ${controller.product['price']}/-',style: TextStyle(fontSize: 20),),
            Kheight,
            Text('Discount - ${controller.product['discountPercentage']}%'),
            Kheight,
            Container(
              height: 200,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description',style: TextStyle(fontSize: 20),),
                  Kheight,
                  Text('${controller.product['description']}')
                ],
              ),
            )
          ],
              ),
        );
      },)
    );
  }
}