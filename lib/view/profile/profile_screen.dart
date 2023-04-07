import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _switchValue = false;
  String dil = "Türkçe";
  String _switchText = 'Switch is OFF';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PROFİLİM"),
      ),
      body: ListView(
        ///todo: Profil bilgiler i + fotoğraf + bildirim tercihleri vb.
children: [
  SizedBox(height:15),
  CircleAvatar(
    backgroundImage:
NetworkImage('https://e7.pngegg.com/pngimages/666/201/png-clipart-computer-icons-woman-women-s-day-face-holidays.png'),
        radius: 75,

  ),
  SizedBox(height:20),
  Text(
      "Merhaba",
    textAlign: TextAlign.center,
    style: TextStyle(
          fontSize: 32,
        fontWeight: FontWeight.bold,

    )
  ),
  SizedBox(height: 35),
  Row(
    children: [
      SizedBox(width:23),
      Icon(Icons.notifications),
      SizedBox(width: 33),

      Text("Bildirimler",
      style: TextStyle(
        fontSize: 20,

      )),


      Spacer(),
      Switch(
        value: _switchValue,
        onChanged: (bool newValue) {
          setState(() {
            _switchValue = newValue;
            if (_switchValue) {
              _switchText = 'Switch is ON';
            } else {
              _switchText = 'Switch is OFF';
            }
          });
        },
      ),

      SizedBox(height: 25),

    ],

  ),
  SizedBox(height: 20),
  Row(
    children: [
      SizedBox(width:25),
      Icon(Icons.person),
      SizedBox(width: 25),
      TextButton(
        child: Text("Profil fotoğrafını güncelle",
            style: TextStyle(
            color: Colors.black,
                fontSize: 20,

        ),
        ),


            onPressed:(){

    }
      )

    ],
  ),
  SizedBox(height: 20),
  Row(
    children: [
      SizedBox(width:25),
      Icon(Icons.key),
      SizedBox(width: 25),
      TextButton(
          child: Text("Şifre",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,

            ),
          ),


          onPressed:(){
            Get.to(PasswordPage(
              
            ))

          }
      )

    ],
  ),
  SizedBox(height: 20),
  Row(
    children: [
      SizedBox(width: 25),
      Icon(Icons.language),
      SizedBox(width: 25),

      DropdownButton(
        value: dil,
        items: [
          "Türkçe",
          "İngilizce",

        ]
            .map((label) => DropdownMenuItem(
          child: Text(label,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),),
          value: label,
        ))
            .toList(),
        onChanged: (value) {
          setState(() {
            dil = value!;
          });
        },
      ),
    ],
  ),
  SizedBox(height: 20),
  Row(
    children: [
      SizedBox(width:25),
      Icon(Icons.question_mark),
      SizedBox(width: 25),
      TextButton(
          child: Text("Yardım",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,

            ),
          ),


          onPressed:(){

          }
      )

    ],
  ),
],

      ),

    );
  }
}
