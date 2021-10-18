import 'package:flutter/material.dart';

class References {
  static const String appName = "Orler TV";

  static const String streamUrl = "https://w1.mediastreaming.it/orlertv/livestream/playlist.m3u8";

  static const String phoneNumber = "+39 041 632671";

  static const Color orlerBlue = Color(0xFF0175F9);
  static const LinearGradient appBarGradient = LinearGradient(
    end: AlignmentDirectional.topEnd,
    begin: AlignmentDirectional.bottomStart,
    stops: [1 / 2, 1.0],
    colors: <Color>[
      Colors.black,
      orlerBlue,
    ],
  );
}
