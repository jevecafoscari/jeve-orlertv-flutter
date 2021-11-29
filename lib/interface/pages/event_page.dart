import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/models/event_model.dart';
import 'package:jeve_orlertv_flutter/resources/provider/event_provider.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<EventModel>?>(
      future: EventProvider.getLatestEvents(),
      builder: (BuildContext context, AsyncSnapshot<List<EventModel>?> postsSnapshot) {
        if (postsSnapshot.hasData) {
          return ListView.builder(
            itemCount: postsSnapshot.data!.length,
            itemBuilder: (BuildContext context, int index) => ListTile(
              title: Text(postsSnapshot.data!.elementAt(index).title),
              subtitle: Text(postsSnapshot.data!.elementAt(index).excerpt),
            ),
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
