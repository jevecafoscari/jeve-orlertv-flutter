import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/interface/screen/event_screen.dart';
import 'package:jeve_orlertv_flutter/models/event_model.dart';

class EventListElement extends StatelessWidget {
  final EventModel event;

  const EventListElement({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(EventScreen.route, arguments: event),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CachedNetworkImage(),
          Text(event.title, style: Theme.of(context).textTheme.headline5),
          const SizedBox(height: 8.0),
          Text(event.excerpt),
        ],
      ),
    );
  }
}
