import 'package:akademi_mobil/constants/color.dart';
import 'package:akademi_mobil/view/form/form_screen.dart';
import 'package:akademi_mobil/view/home/home_screen.dart';
import 'package:akademi_mobil/view/profile/profile_screen.dart';
import 'package:akademi_mobil/view/program/program_screen.dart';
import 'package:akademi_mobil/view/tree_view/tree_screen.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

var bottomNavIndex = 0.obs;
List pageListVana = [HomePage(), TreePage(), ProgramPage(), FormPage()];

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            //padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 65,
              width: 65,
              child: FloatingActionButton(
                splashColor: Colors.black,
                backgroundColor: kAppBarColor,
                child: Icon(Icons.home_filled), //Icon(Icons.looks_6_rounded),
                onPressed: () {
                  bottomNavIndex.value = 0;
                  Get.offAll(HomePage());
                },
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
          //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar(
            icons: [
              Icons.home,
              Icons.person,
              Icons.domain_verification,
              Icons.business
            ],
            backgroundColor: Colors.white,
            iconSize: 28,
            activeColor: kAppBarColor,
            inactiveColor: Colors.black,
            activeIndex: bottomNavIndex.value,
            splashColor: kAppBarColor,
            gapLocation: GapLocation.center,
            notchMargin: 0,
            //notchSmoothness: NotchSmoothness.verySmoothEdge,
            leftCornerRadius: 0,
            rightCornerRadius: 0,
            onTap: (index) {
              setState(() {
                bottomNavIndex.value = index;
              });
            },
            //other params
          ),
          body: pageListVana[bottomNavIndex.value],
        ));
  }
}
