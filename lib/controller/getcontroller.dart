import 'dart:convert';
import 'package:http/http.dart' as http;



Future < Map<String,dynamic>> getHomedetails()async{
  final response = await http.get(Uri.parse('https://dummyjson.com/products'));

  if(response.statusCode == 200){
    final data = jsonDecode(response.body);
    return data;

  }
  Map<String,dynamic> map = {};
  return map;
}

Future <Map<String,dynamic>> getProductDetails(int id)async{
  final response = await http.get(Uri.parse('https://dummyjson.com/products/$id'));

  if(response.statusCode == 200){
    final data = jsonDecode(response.body);
    return data;
    
  }
  Map<String,dynamic> map = {};
  return map;

}