import 'package:flutter/material.dart';
import 'package:kingslabtest/controller/putcontroller.dart';
import 'package:kingslabtest/core/constant.dart';

class ProductEditScreen extends StatelessWidget {
   ProductEditScreen({super.key,required this.data});
   Map<dynamic,dynamic> data;
  TextEditingController titleCtr = TextEditingController();
  TextEditingController priceCtr = TextEditingController();
  TextEditingController descriptionCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    titleCtr.text = data['title'];
    priceCtr.text = data['price'].toString();
    descriptionCtr.text = data['description'];
    return Scaffold(
      appBar: AppBar(
        title:Text('Edit'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
                controller: titleCtr,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
              ),
              Kheight,
            TextField(
                controller: priceCtr,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
              ),
            Kheight,
            TextField(
                controller: descriptionCtr,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
              ),
              Kheight,
            Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(colors: [
                          Color(0xffF65F53),
                          Color(0xffDE3377),
                        ])),
                    child: TextButton(
                      onPressed: () {
                      edit(titleCtr.text, priceCtr.text, descriptionCtr.text, data['id'],context);

                      },
                      child: const Center(
                          child: Text('Update', style: TextStyle(color: Colors.white))),
                    ),
                  ),


            
          ],
        ),
      ),
    );
  }
}