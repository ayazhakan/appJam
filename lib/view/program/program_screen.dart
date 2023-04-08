
import 'package:akademi_mobil/view/program/programs.dart';
import 'package:flutter/material.dart';

import 'add_program.dart';
import 'programIcerik.dart';
import 'programs.dart';



class ProgramPage extends StatefulWidget {



  const ProgramPage({Key? key}) : super(key: key);

  @override
  State<ProgramPage> createState() => _ProgramPageState();

}

class _ProgramPageState extends State<ProgramPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Programlar"),
      ),floatingActionButton: ElevatedButton(
      child: const Icon(Icons.add),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddProgram()),
        );
      },
    )
        ,
     body: Row(
       children: [
         Text("Birinci Program"),
         ElevatedButton(onPressed: (){
           Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const Programs()));
         }, child: const Text("Git!")),
         ElevatedButton.icon(icon: Icon(Icons.delete), style: ElevatedButton.styleFrom(
           primary: Colors.red, // Background color
         ),onPressed: (){}, label:Text(" Sil!")),
         ElevatedButton.icon(icon: Icon(Icons.update),style: ElevatedButton.styleFrom(
             primary: Colors.green), onPressed: (){}, label:Text(" Güncelle!")),
       ],
     ),
    );
  }
}
