
import 'dart:convert';

import 'package:http/http.dart' as http;

edit(String title,String price,String disc,int id)async{
  print(id);
  final uri = Uri.parse('https://dummyjson.com/products/$id');
  final body = {
    "title": title,
    "price": price,
    "thumbnail": "thumbnail",
    "description": disc};

  final response = await http.put(uri,body: jsonEncode(body),headers:{'Content-Type': 'application/json'});
  print(response.statusCode);

}