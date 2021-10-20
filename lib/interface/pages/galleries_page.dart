import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/interface/widget/gallery_list_element.dart';
import 'package:jeve_orlertv_flutter/references.dart';

class GalleriesPage extends StatelessWidget {
  const GalleriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: References.galleries.length,
      itemBuilder: (BuildContext context, int index) =>
          GalleryListElement(galleryModel: References.galleries.elementAt(index)),
    );
  }
}
