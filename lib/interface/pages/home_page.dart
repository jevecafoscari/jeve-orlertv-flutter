import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/assets.dart';
import 'package:jeve_orlertv_flutter/references.dart';
import 'package:jeve_orlertv_flutter/resources/helper/connection_helper.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:wakelock/wakelock.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final VideoPlayerController videoPlayerController = VideoPlayerController.network(References.streamUrl);

  bool initializedVideo = false;
  bool isConnected = false;

  bool get initialized => initializedVideo && isConnected;

  @override
  initState() {
    videoPlayerController.initialize().whenComplete(() {
      videoPlayerController.play();
      Wakelock.enable();
      setState(() => initializedVideo = true);
    });

    ConnectionHelper.isConnected().then((value) => setState(() => isConnected = value));

    super.initState();
  }

  static const TextStyle hintTextStyle = TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: Images.marble, fit: BoxFit.cover)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (initialized)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AspectRatio(
                aspectRatio: 12 / 7,
                child: VisibilityDetector(
                  key: UniqueKey(),
                  onVisibilityChanged: (VisibilityInfo info) {
                    if (initialized) {
                      if (info.visibleFraction == 0.0) {
                        videoPlayerController.pause();
                        Wakelock.disable();
                      } else if (info.visibleFraction == 1.0) {
                        videoPlayerController.play();
                        Wakelock.enable();
                      }
                    }
                  },
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: SizedBox.fromSize(size: videoPlayerController.value.size, child: VideoPlayer(videoPlayerController)),
                  ),
                ),
              ),
            )
          else
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                child: AspectRatio(
                  aspectRatio: 12 / 7,
                  child: Container(
                    color: Colors.black,
                    child: const Center(child: CircularProgressIndicator()),
                  ),
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
                const Text("Canale 867 di Sky", style: hintTextStyle),
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
