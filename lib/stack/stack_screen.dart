import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [

        Container(
          height: 300,
          width: 300,
          color: Colors.black,
        ),

        Container(
          height: 200,
          width: 200,
          color: Colors.blue,
        ),

        Positioned(child: Container(
          height: 100,
          width: 100,
          color: Colors.pink,
        ), bottom: 0, left: 0,)


      ]),
    );
  }
}
