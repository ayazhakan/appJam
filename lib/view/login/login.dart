import 'package:akademi_mobil/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../bottom_navbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  get passwordController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*
        appBar: AppBar(
          title: Text(""),
          backgroundColor: yesil,
        ),*/
        body: ListView(
      children: [
        SizedBox(height: 65),
        Container(
          height: 120,
          child: Image.asset("assets/sign-up.png"),
        ),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Google Oyun ve Uygulama Akademisi',
              style: TextStyle(
                  color: Color(0xff418cf5),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )),
        SizedBox(height: 25),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text('Giriş Yap',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ))),
        Container(
          padding: const EdgeInsets.all(10),
          child: TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'E posta',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextField(
            obscureText: true,
            controller: passwordController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Şifre',
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    yesil), // Here Im having the error
              ),
              child: const Text(
                'Giriş',
              ),
              onPressed: () {
                var nameController;
                var passwordController;
                //print(nameController.text);
                //print(passwordController.text);
                Get.offAll(BottomNavBarPage());
              },
            )),
        Row(
          children: <Widget>[
            const Text('Hesabın yok mu?'),
            TextButton(
              child: const Text(
                'Kaydol',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                //signup screen
              },
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    ));
  }
}
