import 'package:cannabis_aplication/LocalString.dart';
import 'package:cannabis_aplication/screen/Scan.dart';
import 'package:flutter/material.dart';
import 'package:cannabis_aplication/HomeScreen.dart';
import 'package:get/get.dart';
import 'package:camera/camera.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  listCamera = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocalString(),
      locale: Locale('en', 'US'),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
