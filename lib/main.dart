import 'package:flutter/material.dart';
import 'package:untitled/login/login.dart';
import 'package:untitled/stack/stack_screen.dart';
import 'package:untitled/text/TextScreen.dart';


void main(){
  runApp(const MyDemoApp());
}

class MyDemoApp extends StatelessWidget {
  const MyDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Tutorial",
      theme: ThemeData(
          primaryColor: Colors.red
      ),
      home: const StackScreen(),
    );
  }
}
