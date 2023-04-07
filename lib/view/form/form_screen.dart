import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'Dimensions.dart';
import 'Text_Learn.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  List formList=[false,false,false,false,false,false,false,false,false,false,];
  List formName=["Akademi Başvuru","Ideathon","APP Jam","Game Jam","Etkinlik Başvuru 1","Etkinlik Başvuru 2","Bootcamp Başvuru","Alan Başvuru","İngilizce Ders","hediye Başvuru"];
  var titletext="FORMLAR";
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: CustomScrollView(
         slivers: [
           SliverAppBar(
             pinned: true,
             expandedHeight: Dimensions.expandedheight1,
             toolbarHeight: Dimensions.toolbarheight1,
             flexibleSpace: Container(
               decoration: const BoxDecoration(
                 gradient: LinearGradient(
                   begin: AlignmentDirectional.topStart,
                   end: AlignmentDirectional.topEnd,
                   // colors for gradient
                   colors: [
                     Colors.red, Colors.blue,Colors.green,  Colors.yellow,
                   ],
                 ),
               ),
               child: FlexibleSpaceBar(
                 centerTitle: true,
                 title: Text("$titletext",style: TitleTextStyle() ,),
               ),
             ),
             ///title: Text("$titletext",style: TitleTextStyle(),),
             ///centerTitle: true,
           ),
           SliverList(
             delegate: SliverChildBuilderDelegate(
                   (BuildContext context, int index) {
                 return buildForm(index,context);
               },
               childCount: 10,
             ),
           ),
         ],
     ),
        backgroundColor:Colors.white,
        bottomNavigationBar: Container(
          ///padding: EdgeInsets.all(10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.blueGrey,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        ),
      );
  }

  Padding buildForm(int index,BuildContext context) {
    return Padding(
                 padding:  EdgeInsets.all(Dimensions.padding8),
                 child: SizedBox(
                   height: Dimensions.height200,
                   width: Dimensions.height800,
                   child:TextButton(
                     onPressed: () {
                       ///Get.to(DetayPage());
                     },
                     child: Card(
                       color: Colors.white,
                       elevation: Dimensions.elevation10,
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                       child: Padding(
                         padding: const EdgeInsets.all(16),
                         child:Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: <Widget>[
                           Container(
                             width: Dimensions.width100,
                             height: Dimensions.height100,
                             decoration: const BoxDecoration(
                               image: DecorationImage(
                                 fit:   BoxFit.cover,
                                 image: NetworkImage("https://scontent.cdninstagram.com/v/t51.2885-15/334183932_1278404979739858_177589311238080899_n.jpg?stp=dst-jpg_e35&_nc_ht=scontent.cdninstagram.com&_nc_cat=110&_nc_ohc=L_Qtq_CkDm0AX8saEhj&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzA1MzIxMjM3ODY4MTQ0Mzc1OA%3D%3D.2-ccb7-5&oh=00_AfDtyCgFbV8jtYI_H2-5YSvBxWWxxHSv4FnReIoMRmrhOg&oe=6434A85A&_nc_sid=978cb9"),
                               )
                             ),
                           ),
                             SizedBox(width: Dimensions.width20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children:  [
                               Text("${formName[index]}",style: TextStyle(
                                 color: Colors.black87,
                                 fontWeight: FontWeight.w400,
                               ),),
                               SizedBox(height: Dimensions.width5,),
                               Text("02.02.2022",style: buildTextStyle2(),),
                               SizedBox(height: Dimensions.width5,),
                               Text("Anketin konusu",style: buildTextStyle2(),),
                             ],
                            ),
                             SizedBox(width:18),
                             ElevatedButton(
                                 onPressed: () => setState(() {
                                   formList[index]=true;
                                 }),
                                 child: const Text("Tamamlandı",),style: ButtonStyle(
                               backgroundColor: MaterialStateProperty.all( formList[index] ? Colors.green:Colors.red,),
                             ),),
                           ],
                         ),
                       ),
                     ),
                   )
                 ),
               );
  }
}
