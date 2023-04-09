import 'package:akademi_mobil/firebase_options.dart';
import 'package:akademi_mobil/view/form/form_screen.dart';
import 'package:akademi_mobil/view/home/home_screen.dart';
import 'package:akademi_mobil/view/login/Spash_Screen.dart';
import 'package:akademi_mobil/view/login/login.dart';
import 'package:akademi_mobil/view/profile/profile_screen.dart';
import 'package:akademi_mobil/view/request/oneri.dart';

import 'package:akademi_mobil/view/request/mazeretler.dart';

import 'package:akademi_mobil/view/request/request_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'notifications.dart';
import 'view/login/login.dart';
import 'view/program/program_screen.dart';

String? tokenFCM;

void main() {
  Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    // Add your Firebase Cloud Messaging server key here
    await messaging.setForegroundNotificationPresentationOptions(
        alert: true, badge: true, sound: true);
    await messaging.requestPermission(
        sound: true, badge: true, alert: true, provisional: false);
    await messaging.getToken();


    // Bildirim izinlerinin istenmesi
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    print('User granted permission: ${settings.authorizationStatus}');


    //await messaging.subscribeToTopic("all");
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      showNotification(message);
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      showNotification(message);
    });

    tokenFCM = await messaging.getToken();
    print("FCM Token: $tokenFCM");
    runApp(const MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Akademi Mobil',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash_screen(),
    );
  }
}

