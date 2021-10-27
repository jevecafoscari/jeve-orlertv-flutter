import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/assets.dart';

class ProductListElement extends StatelessWidget {
  final AssetImage product;

  const ProductListElement({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 2 / 3,
      child: Column(
        children: [
          Flexible(
            child: AspectRatio(
              aspectRatio: 0.7,
              child: Column(
                children: [
                  AspectRatio(aspectRatio: 1.0, child: Image(image: product)),
                  Flexible(child: Image(image: Images.shadow)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              getProductTitleAndSubtitle.first,
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
          ),
          if (getProductTitleAndSubtitle.length > 1)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                getProductTitleAndSubtitle.last,
                style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }

  List<String> get getProductTitleAndSubtitle {
    String name = product.assetName;

    String title = name.split("/").last;
    title = title.split(".").first;

    List<String> subtitleLines = title.split("_");
    subtitleLines.removeAt(0);
    String? subtitle;
    if (subtitleLines.isNotEmpty) subtitle = subtitleLines.reduce((value, element) => "$value\n$element");
    if (subtitle != null) subtitle.replaceAll("+", "");

    title = title.split("_").first;

    return <String>[title, if (subtitle != null) subtitle];
  }
}
