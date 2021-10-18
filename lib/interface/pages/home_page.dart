import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/references.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final VideoPlayerController videoPlayerController = VideoPlayerController.network(References.streamUrl);

  bool initialized = false;

  @override
  initState() {
    videoPlayerController.initialize().whenComplete(() {
      videoPlayerController.play();
      setState(() => initialized = true);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          const Spacer(),
          if (initialized)
            VisibilityDetector(
              key: UniqueKey(),
              onVisibilityChanged: (VisibilityInfo info) {
                if (initialized) {
                  if (info.visibleFraction == 0.0) {
                    videoPlayerController.pause();
                  } else if (info.visibleFraction == 1.0) {
                    videoPlayerController.play();
                  }
                }
              },
              child: FittedBox(
                fit: BoxFit.contain,
                child: SizedBox.fromSize(size: videoPlayerController.value.size, child: VideoPlayer(videoPlayerController)),
              ),
            ),
          const Spacer(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();

    super.dispose();
  }
}
