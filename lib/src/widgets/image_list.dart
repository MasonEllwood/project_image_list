import 'package:flutter/material.dart';
import 'package:project_1/src/models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: this.images.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(this.images[index].url);
       },
      ),
    );
  }
}