import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/interface/widget/program_list_element.dart';
import 'package:jeve_orlertv_flutter/references.dart';

class ProgrammingPage extends StatelessWidget {
  const ProgrammingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: References.programming.entries.length,
      itemBuilder: (BuildContext context, int typeIndex) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: Text(
              References.programming.entries.elementAt(typeIndex).key,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          const SizedBox(height: 8.0),
          AspectRatio(
            aspectRatio: 3.0,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: References.programming.entries.elementAt(typeIndex).value.length,
              itemBuilder: (BuildContext context, int productIndex) =>
                  ProgramListElement(program: References.programming.entries.elementAt(typeIndex).value.elementAt(productIndex)),
              separatorBuilder: (BuildContext context, int index) => const SizedBox(
                width: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
