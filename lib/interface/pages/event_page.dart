import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/assets.dart';
import 'package:jeve_orlertv_flutter/interface/widget/event_list_element.dart';
import 'package:jeve_orlertv_flutter/models/event_model.dart';
import 'package:jeve_orlertv_flutter/resources/provider/event_provider.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        image: DecorationImage(image: Images.marble, fit: BoxFit.cover),
      ),
      child: FutureBuilder<List<EventModel>?>(
        future: EventProvider.getLatestEvents(),
        builder: (BuildContext context, AsyncSnapshot<List<EventModel>?> postsSnapshot) {
          if (postsSnapshot.hasData) {
            return Container(
              color: Colors.white.withOpacity(0.4),
              child: ListView.separated(
                padding: const EdgeInsets.all(16.0),
                itemCount: postsSnapshot.data!.length,
                separatorBuilder: (BuildContext context, int index) => const Divider(),
                itemBuilder: (BuildContext context, int index) => EventListElement(event: postsSnapshot.data!.elementAt(index)),
              ),
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
