
import 'package:flutter/material.dart';



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
      ),floatingActionButton: ElevatedButton(
      child: const Text("Ekle"),
      onPressed: () {},
    )
      ,


    );
  }
}
