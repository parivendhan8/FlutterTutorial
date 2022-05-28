
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

  String image = 'https://picsum.photos/id/1/200/300';

  String get _randomImage => 'https://picsum.photos/id/${Random().nextInt(1000)}/200/300';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            final snackBar = SnackBar(
              content: Text('Image index is $index'),
              duration: const Duration(seconds: 5),
            );
            Scaffold.of(context).showSnackBar(snackBar);

          },
          child: Container(
            child: buildCard2()
          ),
        );
      },
      itemCount: 30,
      ),

    );
  }

  CachedNetworkImage buildCachedNetworkImage() {
    return CachedNetworkImage(
          imageBuilder: (context, imageProvider) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: imageProvider, fit: BoxFit.fill),
              ),
              height: 60,
              width: 60,
            ),
          ),
          imageUrl: _randomImage,
          errorWidget: (context, url, error) => const Icon(Icons.error),
        );
  }

  Padding buildCard() {
    return Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(
            child: SizedBox(height: 100,child: Center(child: Text("Hi"))),
            elevation: 8,
            shadowColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        );
  }

  Padding buildCard2() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: SizedBox(height: 100,child: Row(
          children: [
            buildCachedNetworkImage(),
            Center(child: Text("Hi")),
          ],
        )),
        elevation: 8,
        shadowColor: Colors.blue,
        shape: RoundedRectangleBorder( side: BorderSide(
          color: Colors.deepPurple[400]!,
          width: 1.3
        ),
            borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }


  CircleAvatar buildCircleAvatar2() => CircleAvatar(radius: 30,child: ClipOval(child: Image.network(_randomImage, width: 60, height: 60, fit: BoxFit.cover,)));

  CircleAvatar buildCircleAvatar() => CircleAvatar(backgroundImage: NetworkImage('https://picsum.photos/id/$_randomImage/200/300'), radius: 30,);
}
