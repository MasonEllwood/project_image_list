import 'package:flutter/material.dart';
import 'package:project_1/src/models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return buildImage(images[index]);
       },
      ),
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.cyan),
      ),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Image.network(image.url),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(image.title),
          ),
        ],
      )
    );
  }
}