
import 'dart:convert';

import 'package:http/http.dart' as http;

login(String userName,String passWord)async{
  final uri = Uri.parse('https://dummyjson.com/auth/');
  final body ={
    'username':userName,
    'password':passWord
  };
  final respose = await http.post(uri,body: jsonEncode(body),headers:{'Content-Type':'application/json'});
  print(respose.statusCode);
  if(respose.statusCode == 201){
  }

}