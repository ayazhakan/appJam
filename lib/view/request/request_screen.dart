import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView(
        ///todo: talepler ekranı - akademi ekbiyle iletişim vb.
        children: [
          Container(
            height: Get.height * 0.09,
            child: Card(
              elevation: 4.0,
              child: Row(
                children: [

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
