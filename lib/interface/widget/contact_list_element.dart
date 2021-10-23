import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/models/contact_model.dart';

class ContactListElement extends StatelessWidget {
  final ContactModel contactModel;
  final bool odd;

  const ContactListElement({
    Key? key,
    required this.contactModel,
    required this.odd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: odd
            ? null
            : LinearGradient(colors: <Color>[Colors.black.withOpacity(0.8), Colors.transparent]),
        color: odd ? Colors.white.withOpacity(0.4) : null,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(contactModel.title,
                style: TextStyle(fontWeight: FontWeight.bold, color: odd ? null : Colors.white)),
            const SizedBox(height: 8.0),
            Text(contactModel.text,
                style: TextStyle(color: odd ? null : Colors.white, fontWeight: FontWeight.w300)),
          ],
        ),
      ),
    );
  }
}
