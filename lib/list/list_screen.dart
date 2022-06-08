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

  String get _randomImage =>
      'https://picsum.photos/id/${Random().nextInt(1000)}/200/300';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            height: 100,
            width: 100,
            color: Colors.white.withOpacity(8.0),
          );
        },
        itemCount: 10,
      ),
    );
  }

  ListView buildListView() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(child: buildCard2());
      },
      itemCount: 30,
    );
  }

  // Examples
  CachedNetworkImage buildCachedNetworkImage() {
    return CachedNetworkImage(
      imageBuilder: (context, imageProvider) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: imageProvider, fit: BoxFit.fill),
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
        child: SizedBox(height: 100, child: Center(child: Text("Hi"))),
        elevation: 8,
        shadowColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  Padding buildCard2() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: SizedBox(
            height: 100,
            child: Row(
              children: [
                buildCachedNetworkImage(),
                Center(child: Text("Hi")),
              ],
            )),
        elevation: 8,
        shadowColor: Colors.deepPurple[400],
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.deepPurple[400]!, width: 4.3),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  CircleAvatar buildCircleAvatar2() => CircleAvatar(
      radius: 50,
      child: ClipOval(
          child: Image.network(
        _randomImage,
        width: 60,
        height: 60,
        fit: BoxFit.cover,
      )));

  Widget buildCircleAvatar() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.network(
          _randomImage,
          height: 100,
          fit: BoxFit.fill,
        ),
      );
}
