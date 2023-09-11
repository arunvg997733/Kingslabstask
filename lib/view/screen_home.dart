
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:kingslabtest/controller/home_controller.dart';
import 'package:kingslabtest/core/constant.dart';
import 'package:kingslabtest/view/screen_product.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  final getctr = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    getctr.getList();
    return  Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GetBuilder<HomeScreenController>(builder: (controller) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView.separated(itemBuilder: (context, index) {
                  final data = getctr.productList.value[index];
                return ProductTile(data: data,);
                          }, separatorBuilder: (context, index) {
                return Divider();
                          }, itemCount: getctr.productList.length),
              );
            },)
          )
        ],
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
   ProductTile({super.key,required this.data});
   Map<String,dynamic> data;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
                  height: 100,
                  width: 100,
                  child: Image.network(data['images'][0])),
          Kwidth,
        Expanded(
          child: Column(
            children: [
              Text(data['title'],style: TextStyle(fontSize: 15,overflow: TextOverflow.ellipsis),),
              Kheight,
              Text('Rs ${data['price']}/-',style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
        IconButton(onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductScreen(id: data['id']),));
        }, icon: Icon(Icons.edit))
      ],
    );
  }
}