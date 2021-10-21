import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/models/gallery_model.dart';

class GalleryListElement extends StatelessWidget {
  final GalleryModel galleryModel;

  const GalleryListElement({Key? key, required this.galleryModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 3,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          PageView.builder(
            itemCount: galleryModel.images.length,
            itemBuilder: (BuildContext context, int index) =>
                Image(image: galleryModel.images.elementAt(index), fit: BoxFit.cover),
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Spacer(),
                    Text(
                      galleryModel.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                  ],
                ),
              ),
              color: Colors.black.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}
