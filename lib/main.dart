import 'package:chat_app/themes/lightmode.dart';
import 'package:chat_app/view/registerpage/registerpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Registerpage(),
      theme: lightmode,
    );
  }
}
