import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/assets.dart';
import 'package:jeve_orlertv_flutter/references.dart';
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

  static const TextStyle hintTextStyle = TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: Images.marble, fit: BoxFit.cover)),
      child: Column(
        children: [
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: SizedBox.fromSize(size: videoPlayerController.value.size, child: VideoPlayer(videoPlayerController)),
                ),
              ),
            ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ORLER TV - LIVE Streaming", style: hintTextStyle.copyWith(fontWeight: FontWeight.bold)),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: Text("Canale 144 del Digitale Terrestre", style: hintTextStyle),
                ),
                const Text("Sky 867", style: hintTextStyle),
              ],
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
