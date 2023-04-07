import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView(
        ///todo: formlar listelenecek ve tıklandığında uygulama içerisinde webview ile gösterilecek
        ///sonrasında kullanıcı tik atabilir ve o formun rengi yeşil olabilir
        
      ),
    );
  }
}
