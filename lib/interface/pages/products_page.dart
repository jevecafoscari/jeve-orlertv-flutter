import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/interface/widget/marbled_text.dart';
import 'package:jeve_orlertv_flutter/interface/widget/product_list_element.dart';
import 'package:jeve_orlertv_flutter/references.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: MarbledText(
              text:
                  "La collezione ORLER muta ogni settimana, pertanto seguiteci sempre sul canale ORLER TV e venite a trovarci nelle nostre gallerie e ai nostri eventi."),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: References.products.entries.length,
          padding: const EdgeInsets.only(bottom: 16.0),
          itemBuilder: (BuildContext context, int typeIndex) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: Text(
                  References.products.entries.elementAt(typeIndex).key,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              const Divider(thickness: 2.0, indent: 16.0, endIndent: 16.0),
              const SizedBox(height: 16.0),
              AspectRatio(
                aspectRatio: 1.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: References.products.entries.elementAt(typeIndex).value.length,
                  itemBuilder: (BuildContext context, int productIndex) =>
                      ProductListElement(product: References.products.entries.elementAt(typeIndex).value.elementAt(productIndex)),
                  separatorBuilder: (BuildContext context, int index) => const SizedBox(
                    width: 32.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
