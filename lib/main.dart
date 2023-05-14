import 'package:flutter/material.dart';
import 'package:tests/bindings.dart';
import 'package:tests/home_Screen.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialBinding: MyBindigs(),
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}
