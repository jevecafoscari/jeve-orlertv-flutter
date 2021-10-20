import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/assets.dart';
import 'package:jeve_orlertv_flutter/interface/widget/contact_list_element.dart';
import 'package:jeve_orlertv_flutter/references.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: Images.marble, fit: BoxFit.cover)),
      child: ListView.builder(
        itemCount: References.contacts.length,
        itemBuilder: (BuildContext context, int index) => ContactListElement(
          contactModel: References.contacts.elementAt(index),
          odd: index % 2 == 0,
        ),
      ),
    );
  }
}
