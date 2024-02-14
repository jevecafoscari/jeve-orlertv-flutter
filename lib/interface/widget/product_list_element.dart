import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/assets.dart';
import 'package:jeve_orlertv_flutter/references.dart';

class ProductListElement extends StatelessWidget {
  final AssetImage product;

  const ProductListElement({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showProductDetails(context),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 2 / 3,
        child: Column(
          children: [
            Flexible(
              child: AspectRatio(
                aspectRatio: 0.7,
                child: Column(
                  children: [
                    AspectRatio(
                        aspectRatio: 1.0,
                        child: Image(image: product, fit: BoxFit.contain)),
                    Flexible(child: Image(image: Images.shadow)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                getProductTitleAndSubtitle.first,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ),
            if (getProductTitleAndSubtitle.length > 1)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  getProductTitleAndSubtitle.last,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }

  List<String> get getProductTitleAndSubtitle {
    String name = product.assetName;

    String title = name.split("/").last;
    title = title.split(".").first.split("+").first;

    List<String> subtitleLines = title.split("_");
    subtitleLines.removeAt(0);
    String? subtitle;
    if (subtitleLines.isNotEmpty) {
      subtitle = subtitleLines.reduce((value, element) => "$value\n$element");
    }

    title = title.split("_").first;

    return <String>[title, if (subtitle != null) subtitle];
  }

  void showProductDetails(BuildContext context) {
    final TransformationController controller = TransformationController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(32.0)),
            child: Material(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: References.genericGradient,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: IconButton(
                          icon: const Icon(Icons.close, color: Colors.white),
                          onPressed: Navigator.of(context).pop,
                        ),
                      ),
                      Expanded(
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(32.0)),
                          child: InteractiveViewer(
                            transformationController: controller,
                            onInteractionEnd: (ScaleEndDetails details) =>
                                controller.value = Matrix4.identity(),
                            child: Container(
                              color: Colors.white,
                              child: Image(image: product, fit: BoxFit.contain),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      const Divider(color: Colors.white, thickness: 2.0),
                      Text(getProductTitleAndSubtitle.first,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(color: Colors.white)),
                      if (getProductTitleAndSubtitle.length > 1)
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            getProductTitleAndSubtitle.last,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontSize: 16.0, color: Colors.white),
                          ),
                        ),
                      const SizedBox(height: 16.0),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
