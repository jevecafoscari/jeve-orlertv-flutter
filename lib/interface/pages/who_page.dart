import 'package:flutter/material.dart';

class WhoPage extends StatelessWidget {
  const WhoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: const <Widget>[
        Text(
          "A metà degli anni Cinquanta, poco più che ragazzo, Ermanno Orler decise di lasciare il suo paese natale (mezzano di Primiero) per andare in Francia a fare il boscaiolo."
          "Successivamente decide di spostarsi a Venezia, dove lavorava come artista già suo fratello Davide, e dove avrà inizio la loro e la Sua carriera. Corre l’anno 1958."
          "Ermanno con il legno ci sa fare, e decide di aprire un piccolo laboratorio di cornici, che diviene da subito utile al fratello e ad altri artisti come Emilio Vedova, Virgilio Guidi, Tancredi..."
          "Comincia lì, nel piccolo laboratorio di Venezia, un’attività che si rivela subito un successo. L’esigenza di rendere più agevoli i contatti con il resto dell’Italia, verso la metà degli anni Sessanta lo spinge a spostare la galleria da Venezia a Favaro Veneto, in quello che è poi diventato il centro nevralgico dell’azienda. Nel frattempo il giro dei loro artisti va ampliandosi: De Chirico, Picasso, Chagall, Campigli, Guttuso, Migneco, Cassinari, Cantatore. E ancora De Pisis, Fiume, Morlotti, Music, Afro, fino ad Hartung, Adami, Possenti e tanti altri.",
        ),
      ],
    );
  }
}
