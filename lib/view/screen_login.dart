import 'package:flutter/material.dart';
import 'package:kingslabtest/controller/getcontroller.dart';
import 'package:kingslabtest/controller/logincontroller.dart';
import 'package:kingslabtest/core/constant.dart';
import 'package:kingslabtest/view/screen_home.dart';

class LoginSceen extends StatelessWidget {
   LoginSceen({super.key});

  TextEditingController userNameCtr = TextEditingController();
  TextEditingController passWordCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: userNameCtr,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
            ),
            Kheight,
            TextField(
              controller: passWordCtr,
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
                      // login(userNameCtr.text, passWordCtr.text);
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(),));

                      },
                      child: const Center(
                          child: Text('Login', style: TextStyle(color: Colors.white))),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}