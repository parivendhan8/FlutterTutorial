

import 'package:flutter/material.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Demo Flutter', style: TextStyle(
            fontSize: 30,
            fontFamily: 'Satisfy',
            color: Colors.red[900],
          fontWeight: FontWeight.w100
        ),),
      ),
    );
  }
}
