import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/models/gallery_model.dart';

class GalleryListElement extends StatelessWidget {
  final GalleryModel galleryModel;

  const GalleryListElement({Key? key, required this.galleryModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: galleryModel.images.length,
      itemBuilder: (BuildContext context, int index) =>
          Image(image: galleryModel.images.elementAt(index)),
    );
  }
}
