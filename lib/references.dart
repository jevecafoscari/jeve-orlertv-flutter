import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/assets.dart';
import 'package:jeve_orlertv_flutter/models/contact_model.dart';
import 'package:jeve_orlertv_flutter/models/gallery_model.dart';
import 'package:jeve_orlertv_flutter/models/program_model.dart';

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

  static const LinearGradient genericGradient = LinearGradient(
    end: AlignmentDirectional.topStart,
    begin: AlignmentDirectional.bottomEnd,
    colors: <Color>[
      Colors.black,
      orlerBlue,
    ],
  );

  static const List<ContactModel> contacts = <ContactModel>[
    ContactModel(
      title: "SEDE CENTRALE:\nFavaro Veneto",
      text: "Via Col San Martino 37\nTel. +39 041 632671\nFax. +39 041 634850\n\nAperta 24h/24 tutto l’anno dal 1958",
    ),
    ContactModel(
      title: "Abano Terme",
      text:
          "Via delle Terme 17\n35031 Abano Terme\nTel. +39 049667394\nemail. abano@orler.it\n\nAperta tutto l’anno eccetto il mese di agosto (dal 20 luglio al 10 agosto)",
    ),
    ContactModel(
      title: "Mestre",
      text: "Via Einaudi 16\nTel.: +39 041 2381089\nEmail: mestre@orler.it\n\nAperta per mostre temporanee",
    ),
    ContactModel(
      title: "Madonna di Campiglio",
      text:
          "c/o centro Rainalter\nTel.: +39 0465.442685\nPaolo Orler: +39 3389799736\nEmail: campiglio@orler.it\n\nAperta da luglio a settembre,\nda dicembre a Pasqua",
    ),
  ];

  static List<GalleryModel> galleries = <GalleryModel>[
    GalleryModel(
      title: "Sede Centrale: Favaro Veneto",
      images: <AssetImage>[
        Images.favaro1,
        Images.favaro2,
        Images.favaro3,
      ],
    ),
    GalleryModel(
      title: "Galleria Abano Terme",
      images: <AssetImage>[
        Images.abano2,
        Images.abano3,
        Images.abano4,
        Images.abano5,
        Images.abano6,
        Images.abano7,
        Images.abano8,
        Images.abano9,
        Images.abano10,
        Images.abano11,
        Images.abano12,
        Images.abano13,
        Images.abano1,
      ],
    ),
    GalleryModel(
      title: "Galleria Madonna di Campiglio",
      images: <AssetImage>[
        Images.campiglio1,
        Images.campiglio2,
        Images.campiglio3,
        Images.campiglio4,
        Images.campiglio5,
        Images.campiglio6,
      ],
    ),
    GalleryModel(
      title: "Galleria Mestre",
      images: <AssetImage>[
        Images.mestre1,
      ],
    ),
  ];

  static Map<String, List<AssetImage>> products = <String, List<AssetImage>>{
    "GIOIELLI e OROLOGI": <AssetImage>[
      Images.anelloInOroBiancoConDiamanti,
      Images.anelloInOroBiancoConZaffiroRosaEDiamantiTaglioBaguette,
      Images.anelloInOroBiancoConTanzaniteEDiamanti,
      Images.anelloInOroBiancoConZaffiroEDiamanti,
      Images.anelloInOroBiancoConSmeraldoEDiamantiATaglioMarquise,
      Images.collierDiPerleAustraliane,
      Images.collierDiTurchesiNaturaliEDiamanti,
      Images.orecchiniInOroBiancoEDiamantiDegrade,
      Images.patekPhilippeAcquaNautInAcciaioEOroBianco,
      Images.patekPhilippeInOroGiallo,
      Images.rolexOysterPerpetualRossoCorallo,
      Images.rolexDaytonaAcciaioEOro,
      Images.rolexSkyDwellerAcciaioEOro,
      Images.rolexSubmarinerHulk,
      Images.rolexSubmarinerScrittaRossa,
      Images.rolexYachtMaster,
      Images.solitarioInOroBiancoConDiamanteTaglioPrincess,
    ],
    "TAPPETI": <AssetImage>[
      Images.bergamaOPergama,
      Images.ghiordes204x144,
      Images.heritzSeta180x133FineXIXSecolo,
      Images.patchworkRigeneratoInAfganistanConPezziPersiani,
      Images.pergamaFineXVIIISecolo,
      Images.pergamo121x114FineXIXSecolo,
      Images.pergamoKeles155x106FineXIXSecolo,
      Images.starKazak207x148FineXVIIISecolo,
      Images.sumakVerneh385x156FineXIXSecolo,
      Images.ushak177x145FineXVIIISecolo,
      Images.ushak208x150InizioXIXSecolo,
      Images.ushak277x186FineXVIIISecolo,
      Images.vernehXIXSecoloCaucasoRusso,
      Images.vernehXIXsecoloCaucasoRusso,
    ],
    "QUADRI": <AssetImage>[
      Images.armanAccumulazione193x244,
      Images.bonalumiEstroflessione140x100Anno1964,
      Images.christo,
      Images.christoa,
      Images.christob,
      Images.christoc,
      Images.dennisOppenheimTecnicaMistaSuCarta196x127Anno1993,
      Images.dennisOppenheimTecnicaMistaSuCarta196x127Anno2001,
      Images.jannisKounellisInstallazione200x360,
      Images.markKostabiOlioTela213x176Anno1988,
      Images.markKostabiOlioTela200x300Anno2006,
      Images.paulJenkinsOlioTela24x30Anno1958,
      Images.raciti,
      Images.rosaiOlioTela50x701946,
      Images.ugoNespolo,
    ],
  };

  static Map<String, List<ProgramModel>> programming = <String, List<ProgramModel>>{
    "Lunedì": <ProgramModel>[
      ProgramModel(
        time: "10:00-13:00 DIRETTA",
        title: "Giorgio Regali",
        type: "ARTE MODERNA",
      ),
      ProgramModel(
        time: "13:00-14:00",
        title: "FILMATI",
        type: "FILMATI",
      ),
      ProgramModel(
        time: "14:00-17:00",
        title: "REPLICA",
        type: "REPLICA",
      ),
      ProgramModel(
        time: "17:00-20:00",
        title: "REPLICA",
        type: "REPLICA",
      ),
      ProgramModel(
        time: "20:00-21:00",
        title: "FILMATI",
        type: "FILMATI",
      ),
      ProgramModel(
        time: "21:00-24:00 DIRETTA",
        title: "Carlo Vanoni",
        type: "ARTE MODERNA",
      ),
    ],
    "Martedì": <ProgramModel>[
      ProgramModel(
        time: "10:00-13:00",
        title: "REPLICA",
        type: "REPLICA",
      ),
      ProgramModel(
        time: "13:00-14:00",
        title: "FILMATI",
        type: "FILMATI",
      ),
      ProgramModel(
        time: "14:00-17:00 DIRETTA",
        title: "Carlo Vanoni",
        type: "ARTE MODERNA",
      ),
      ProgramModel(
        time: "17:00-20:00 DIRETTA",
        title: "Catone Biasioli",
        type: "TAPPETI",
      ),
      ProgramModel(
        time: "20:00-21:00",
        title: "FILMATI",
        type: "FILMATI",
      ),
      ProgramModel(
        time: "21:00-24:00",
        title: "Carlo Vanoni",
        type: "ARTE MODERNA",
      ),
    ],
    "Mercoledì": <ProgramModel>[
      ProgramModel(
        time: "10:00-14:00",
        title: "REPLICA",
        type: "REPLICA",
      ),
      ProgramModel(
        time: "14:00-16:00",
        title: "REPLICA",
        type: "REPLICA",
      ),
      ProgramModel(
        time: "16:00-19:00 DIRETTA",
        title: "Claudio Burlone",
        type: "BLISTER GIOIELLI",
      ),
      ProgramModel(
        time: "19:00-21:00",
        title: "REYER",
        type: "REYER",
      ),
      ProgramModel(
        time: "21:00-24:00",
        title: "Giorgio Regali",
        type: "ARTE MODERNA",
      ),
    ],
    "Giovedì": <ProgramModel>[
      ProgramModel(
        time: "10:00-13:00",
        title: "REPLICA",
        type: "REPLICA",
      ),
      ProgramModel(
        time: "13:00-14:00",
        title: "FILMATI",
        type: "FILMATI",
      ),
      ProgramModel(
        time: "14:00-17:00 DIRETTA",
        title: "Claudio Burlone",
        type: "BLISTER GIOIELLI",
      ),
      ProgramModel(
        time: "17:00-20:00 DIRETTA",
        title: "Giorgio Regali",
        type: "ARTE MODERNA",
      ),
      ProgramModel(
        time: "20:00-21:00",
        title: "Cesare's Corner",
        type: "FILMATI",
      ),
      ProgramModel(
        time: "21:00-24:00 DIRETTA",
        title: "Catone Biasioli",
        type: "TAPPETI",
      ),
    ],
    "Venerdì": <ProgramModel>[
      ProgramModel(
        time: "10:00-13:00",
        title: "REPLICA",
        type: "REPLICA",
      ),
      ProgramModel(
        time: "13:00-14:00",
        title: "FILMATI",
        type: "FILMATI",
      ),
      ProgramModel(
        time: "14:00-17:00",
        title: "REPLICA",
        type: "REPLICA",
      ),
      ProgramModel(
        time: "17:00-20:00 DIRETTA",
        title: "Claudio Burlone",
        type: "BLISTER GIOIELLI",
      ),
      ProgramModel(
        time: "20:00-22:00",
        title: "REYER",
        type: "REYER",
      ),
      ProgramModel(
        time: "22:00-24:00 DIRETTA",
        title: "Giovanni Faccenda",
        type: "ARTE MODERNA",
      ),
    ],
    "Sabato": <ProgramModel>[
      ProgramModel(
        time: "10:00-13:00",
        title: "Claudio Burlone",
        type: "BLISTER GIOIELLI",
      ),
      ProgramModel(
        time: "13:00-14:00",
        title: "FILMATI",
        type: "FILMATI",
      ),
      ProgramModel(
        time: "14:00-17:00 DIRETTA",
        title: "Catone Biasioli",
        type: "TAPPETI",
      ),
      ProgramModel(
        time: "17:00-20:00 DIRETTA",
        title: "Giovanni Faccenda",
        type: "ARTE MODERNA",
      ),
      ProgramModel(
        time: "20:00-21:00",
        title: "Cesare's Corner",
        type: "FILMATI",
      ),
      ProgramModel(
        time: "21:00-24:00",
        title: "REPLICA",
        type: "REPLICA",
      ),
    ],
    "Domenica": <ProgramModel>[
      ProgramModel(
        time: "10:00-13:00",
        title: "Giovanni Faccenda",
        type: "ARTE MODERNA",
      ),
      ProgramModel(
        time: "13:00-14:00",
        title: "FILMATI",
        type: "FILMATI",
      ),
      ProgramModel(
        time: "14:00-17:00 DIRETTA",
        title: "Catone Biasioli",
        type: "TAPPETI",
      ),
      ProgramModel(
        time: "17:00-20:00 DIRETTA",
        title: "Giorgio Regali",
        type: "ARTE MODERNA",
      ),
      ProgramModel(
        time: "20:00-21:00",
        title: "FILMATI",
        type: "FILMATI",
      ),
      ProgramModel(
        time: "21:00-24:00",
        title: "REPLICA",
        type: "REPLICA",
      ),
    ],
  };
}
