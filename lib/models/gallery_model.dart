import 'package:flutter/material.dart';

class GalleryModel {
  final String title;
  final List<AssetImage> images;

  const GalleryModel({
    required this.title,
    required this.images,
  });
}
