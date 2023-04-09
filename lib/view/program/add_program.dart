
import 'package:flutter/material.dart';


final _formKey = GlobalKey<FormState>();
class AddProgram extends StatefulWidget {

  const AddProgram({Key? key}) : super(key: key);

  @override
  State<AddProgram> createState() =>_AddProgram();
}

class _AddProgram extends State<AddProgram> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Program Ekle"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _form()
            ],
          ),
        ),
      ),
    );
  }
}

_form() => Container(
  color:Colors.white,
  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
  child: Form(
    key: _formKey,
    child: Column(
      children: <Widget>[

        Text("Pazartesi"),
        TextFormField(decoration: InputDecoration(labelText: "Başlangıç saati giriniz XX:XX")),
        TextFormField(decoration: InputDecoration(labelText: "Bitiş saati giriniz XX:XX")),
        TextFormField(decoration: InputDecoration(labelText: "Ders adı giriniz")),
        Text("Salı"),
        TextFormField(decoration: InputDecoration(labelText: "Başlangıç saati giriniz")),
        TextFormField(decoration: InputDecoration(labelText: "Bitiş saati giriniz")),
        TextFormField(decoration: InputDecoration(labelText: "Ders adı giriniz")),
        Text("Çarşamba"),
        TextFormField(decoration: InputDecoration(labelText: "Başlangıç saati giriniz")),
        TextFormField(decoration: InputDecoration(labelText: "Bitiş saati giriniz")),
        TextFormField(decoration: InputDecoration(labelText: "Ders adı giriniz")),
        Text("Perşembe"),
        TextFormField(decoration: InputDecoration(labelText: "Başlangıç saati giriniz")),
        TextFormField(decoration: InputDecoration(labelText: "Bitiş saati giriniz")),
        TextFormField(decoration: InputDecoration(labelText: "Ders adı giriniz")),
        Text("Cuma"),
        TextFormField(decoration: InputDecoration(labelText: "Başlangıç saati giriniz")),
        TextFormField(decoration: InputDecoration(labelText: "Bitiş saati giriniz")),
        TextFormField(decoration: InputDecoration(labelText: "Ders adı giriniz")),
        Container(
          margin: EdgeInsets.all(10.0),
          child: FloatingActionButton(onPressed: (){

          },child: Text("Onayla"),


          ),
        )
      ],
    ),
  ),
);
