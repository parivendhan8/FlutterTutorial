import 'package:flutter/material.dart';

class AlignmentScreen extends StatefulWidget {
  const AlignmentScreen({Key? key}) : super(key: key);

  @override
  State<AlignmentScreen> createState() => _AlignmentScreenState();
}

class _AlignmentScreenState extends State<AlignmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange[100],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              color: Colors.blue[100],
              child: Row(
                children: [

                 buildPadding(Colors.blue),
                 buildPadding(Colors.black),
                 buildPadding(Colors.green),

                ],
              ),
            ),

            Container(
              width: double.infinity,
              height: 300,
              color: Colors.grey[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  buildPadding(Colors.green[100]!),
                ],
              ),
            ),
            Expanded(child: buildPadding(Colors.green[100]!)),


          ],
        ),
      )


    );
  }

  Padding buildPadding(Color blue) {
    return Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height: 100,
               width: 100,
               color: blue,
             ),
           );
  }
}
