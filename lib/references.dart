import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/models/contact_model.dart';

class References {
  static const String appName = "Orler TV";

  static const String streamUrl = "https://w1.mediastreaming.it/orlertv/livestream/playlist.m3u8";

  static const String phoneNumber = "+39041632671";

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

  static const List<ContactModel> contacts = <ContactModel>[
    ContactModel(
      title: "SEDE CENTRALE:\nFavaro Veneto",
      text:
          "Via Col San Martino 37\nTel. +39 041 632671\nFax. +39 041 634850\n\nAperta 24h/24 tutto l’anno dal 1958",
    ),
    ContactModel(
      title: "Abano Terme",
      text:
          "Via delle Terme 17\n35031 Abano Terme\nTel. +39 049667394\nemail. abano@orler.it\n\nAperta tutto l’anno eccetto il mese di agosto (dal 20 luglio al 10 agosto)",
    ),
    ContactModel(
      title: "Mestre",
      text:
          "Via Einaudi 16\nTel.: +39 041 2381089\nEmail: mestre@orler.it\n\nAperta per mostre temporanee",
    ),
    ContactModel(
      title: "Madonna di Campiglio",
      text:
          "c/o centro Rainalter\nTel.: +39 0465.442685\nPaolo Orler: +39 3389799736\nEmail: campiglio@orler.it\n\nAperta da luglio a settembre,\nda dicembre a Pasqua",
    ),
  ];
}
