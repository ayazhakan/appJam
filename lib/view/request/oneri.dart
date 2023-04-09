import 'package:flutter/material.dart';

class OneriPage extends StatefulWidget {
  const OneriPage({Key? key}) : super(key: key);

  @override
  State<OneriPage> createState() => _OneriPageState();
}

class _OneriPageState extends State<OneriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView(
        children: [
        TextField(

        onSubmitted: (String value) async {
          await showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Kaydedildi'),
                content: Text(
                    'Önerin için teşekkürler :)'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              );
            },
          );
        },
      ),
    ],
    ),
    );
  }
}





