import 'package:flutter/material.dart';

class SurveyClass extends StatefulWidget {
  const SurveyClass({Key? key}) : super(key: key);

  @override
  State<SurveyClass> createState() => _SurveyClassState();
}

class _SurveyClassState extends State<SurveyClass> {
  String? checkedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Text("Apple"),
            leading: Radio(
                value: "Apple",
                groupValue: checkedValue,
                onChanged: (value) {
                  setState(() {
                    checkedValue = value.toString();
                  });
                }),
          ),
          ListTile(
            title: Text("Mango"),
            leading: Radio(
                value: "Mango1",
                groupValue: checkedValue,
                onChanged: (value) {
                  setState(() {
                    checkedValue = value.toString();
                  });
                }),
          ),
        ],
      ),
    );
  }
}
