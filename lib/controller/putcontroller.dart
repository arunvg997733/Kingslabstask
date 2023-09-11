
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

edit(String title,String price,String disc,int id,BuildContext context)async{
  print(id);
  final uri = Uri.parse('https://dummyjson.com/products/$id');
  final body = {
    "title": title,
    "price": price,
    "thumbnail": "thumbnail",
    "description": disc};

  final response = await http.put(uri,body: jsonEncode(body),headers:{'Content-Type': 'application/json'});
  if(response.statusCode == 200){
    Get.snackbar('Success', 'Updated Successfully');
    Navigator.pop(context);
  }

}