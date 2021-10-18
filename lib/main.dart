import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/interface/screen/home_screen.dart';
import 'package:jeve_orlertv_flutter/interface/screen/splash_screen.dart';
import 'package:jeve_orlertv_flutter/references.dart';

void main() {
  runApp(const OrlerTV());
}

class OrlerTV extends StatelessWidget {
  const OrlerTV({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: References.appName,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: SplashScreen.route,
      routes: <String, Widget Function(BuildContext)>{
        HomeScreen.route: (BuildContext context) => const HomeScreen(),
        SplashScreen.route: (BuildContext context) => const SplashScreen(),
      },
    );
  }
}
