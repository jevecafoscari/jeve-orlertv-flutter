import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/interface/screen/event_screen.dart';
import 'package:jeve_orlertv_flutter/models/event_model.dart';

class EventListElement extends StatelessWidget {
  final EventModel event;

  const EventListElement({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: InkWell(
        onTap: () => Navigator.of(context).pushNamed(EventScreen.route, arguments: event),
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            CachedNetworkImage(
              imageUrl: event.coverUrl ?? "",
              fit: BoxFit.cover,
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                color: Colors.white,
                child: Text(
                  event.title,
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
