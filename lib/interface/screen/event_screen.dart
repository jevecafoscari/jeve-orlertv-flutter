import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/assets.dart';
import 'package:jeve_orlertv_flutter/models/event_model.dart';
import 'package:flutter_html/flutter_html.dart';

class EventScreen extends StatelessWidget {
  static const String route = "/eventScreen";

  late final EventModel event;

  EventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    event = ModalRoute.of(context)!.settings.arguments as EventModel;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: Images.marble, fit: BoxFit.cover),
      ),
      child: Container(
        color: Colors.white.withOpacity(0.4),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            if (event.coverUrl != null)
              AspectRatio(
                aspectRatio: 4 / 3,
                child: Stack(
                  fit: StackFit.passthrough,
                  children: [
                    Image.network(
                      event.coverUrl!,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Align(
                        alignment: AlignmentDirectional.bottomStart,
                        child: Text(
                          event.title,
                          style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            Html(data: event.content),
          ],
        ),
      ),
    );
  }
}
