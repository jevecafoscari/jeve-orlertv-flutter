import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/assets.dart';
import 'package:jeve_orlertv_flutter/interface/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String route = "/splashScreen";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    WidgetsBinding.instance.addPostFrameCallback((final Duration timestamp) async {
      await Future.delayed(const Duration(seconds: 2));
      Navigator.of(context).pushReplacementNamed(HomeScreen.route);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Stack(
      fit: StackFit.expand,
      alignment: AlignmentDirectional.center,
      children: [
        Image(image: Images.splashWallpaper, fit: BoxFit.cover, alignment: AlignmentDirectional.centerStart),
        Row(
          children: [
            const Spacer(),
            Expanded(flex: 2, child: Image(image: Images.logo)),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}
