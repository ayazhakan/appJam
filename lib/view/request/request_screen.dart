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

          SizedBox(height: 20),

          buildContainer(
            Icons.phone,
            "Mazeret İşlemi",
          ),
        SizedBox(height: 15),
        buildContainer(
        Icons.contact_support,
        "Destek Talep",
        ),
          SizedBox(height: 15),
          buildContainer(
            Icons.comment,
            "Öneri",
          ),
          SizedBox(height: 15),
          buildContainer(
            Icons.pending_actions,
            "Değerlendirme",
          ),
          SizedBox(height: 35),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              Image.network("https://oyunveuygulamaakademisi.com/assets/site/oua/assets/sites/images/about-us-images/google-logo.png",
                width: 170 ,

              ),

            ],
          ),
          SizedBox(height: 30),
          Row(
        children: [
          SizedBox(width: 20),
          Image.network("https://oyunveuygulamaakademisi.com/assets/site/oua/assets/sites/images/about-us-images/girisim.png",
          width: 150 ,
          ),

          SizedBox(width: 50),
          Image.network("https://oyunveuygulamaakademisi.com/assets/site/oua/assets/sites/images/about-us-images/girvak-logo.png",
            width: 150 ,
          ),
        ],
      ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 10),
              Image.network("https://oyunveuygulamaakademisi.com/assets/site/oua/assets/sites/images/about-us-images/logo-2.png",
                width: 170 ,
              ),

              SizedBox(width: 50),
              Image.network("https://oyunveuygulamaakademisi.com/assets/site/oua/assets/sites/images/about-us-images/tc-logo.png",
                width: 170 ,
              ),
            ],
          ),


        ],

      ),
    );
  }

  Container buildContainer(
      IconData icon,
      String text,
      ) {
    return Container(
          height: Get.height * 0.09,
          child: Card(
            elevation: 4.0,
            child: Row(
              children: [

                Icon( icon,
                  size: 32,
                  color: Colors.black,
                ),

                SizedBox(height: 500 , width: 20 ),
                Row(
                  children: [
                    Text(
                      text,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,


                    ),),
                  ],
                )

              ],
            ),
          ),

    );

  }
}
