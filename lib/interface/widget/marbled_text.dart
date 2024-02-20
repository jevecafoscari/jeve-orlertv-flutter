import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/assets.dart';

class MarbledText extends StatelessWidget {
  final String text;

  const MarbledText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: Images.marble, fit: BoxFit.cover)),
      child: Container(
        color: Colors.white.withOpacity(0.4),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }

}