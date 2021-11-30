import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/models/event_model.dart';
import 'package:jeve_orlertv_flutter/references.dart';
import 'package:wordpress_api/wordpress_api.dart';

class EventProvider {
  static Future<List<EventModel>?> getLatestEvents() async {
    debugPrint("Comincio a cercare i post.");

    final WordPressAPI client = WordPressAPI(References.apiUrl);
    final WPResponse rawEvents = await client.posts.fetch(
      args: <String, dynamic>{
        "categories": 19,
        "per_page": 5,
      },
    );

    final List<Post> events = rawEvents.data as List<Post>;
    if (events.isNotEmpty) {
      final List<EventModel> formattedEvents = <EventModel>[];

      for (int index = 0; index < events.length; index++) {
        final EventModel event = EventModel.fromPost(events.elementAt(index));
        formattedEvents.add(event);
      }

      return formattedEvents;
    }

    debugPrint("Non ho trovato alcun post.");
    return null;
  }
}
