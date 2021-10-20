import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/references.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class FullscreenVideoPlayer extends StatefulWidget {
  @override
  State<FullscreenVideoPlayer> createState() => _FullscreenVideoPlayerState();
}

class _FullscreenVideoPlayerState extends State<FullscreenVideoPlayer> {
  final VideoPlayerController videoPlayerController =
      VideoPlayerController.network(References.streamUrl);

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
    return VisibilityDetector(
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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FittedBox(
          fit: BoxFit.contain,
          child: SizedBox.fromSize(
              size: videoPlayerController.value.size, child: VideoPlayer(videoPlayerController)),
        ),
      ),
    );
  }
}
