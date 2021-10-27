import 'package:flutter/material.dart';
import 'package:jeve_orlertv_flutter/assets.dart';

class WhoPage extends StatelessWidget {
  const WhoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Column(
                children: [
                  Image(image: Images.liminalSpace),
                  const SizedBox(height: 112.0),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  color: Colors.white,
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "\"L'acquisto di un'opera d'arte può rappresentare anche un notevole sacrificio e perciò  essa deve essere vera e genuina\"."
                      "\n\n"
                      "– Ermanno Orler -",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(image: DecorationImage(image: Images.marble, fit: BoxFit.cover)),
                  child: Container(
                    color: Colors.white.withOpacity(0.4),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "L’azienda Orler nel mercato artistico è unica nel suo genere.",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32.0),
                const Text(
                  "Cominciò tutto nel 1958 a Venezia, quando  Ermanno Orler decise di aprire un piccolo laboratorio di cornici, che divenne da subito utile al fratello e ad altri artisti come Emilio Vedova, Virgilio Guidi, Tancredi…"
                  "\n\nComincia lì, nel piccolo laboratorio, un’attività che si rivela subito un successo."
                  "\n\nVerso la metà degli anni Sessanta la galleria si sposta a Favaro Veneto, in quello che è poi diventato il centro nevralgico dell’azienda."
                  "\n\nNel frattempo il giro dei loro artisti va ampliandosi: De Chirico, Picasso, Chagall, Campigli, Guttuso, Migneco, Cassinari, Cantatore. E ancora De Pisis, Fiume, Morlotti, Music, Afro, fino ad Hartung, Adami, Possenti e tanti altri."
                  "\n\nSi inaugurano poi le gallerie di Madonna di Campiglio, Abano Terme e Mestre."
                  "\n\nAll’inizio degli anni Settanta,in un momento straordinariamente favorevole per il mercato, Ermanno decide di allargare l’attività anche ai tappeti... Ai quali dedica il suo cuore. L’idea si rivela formidabile. In breve ne diventano una delle aziende leader."
                  "\n\nIl mercato funziona e gli Orler sono pronti a seguirlo, così dal 1978 al giorno d’oggi, l’azienda si dedica alle vendite televisive. Ultimo traguardo delle Gallerie d’Arte Orler è la nuova “ORLER TV”, che insieme al canale Sky 867, trasmette 24 ore su 24 tutto ciò che riguarda: Arte moderna, Manufatti d’oriente, Gioielleria e Diamanti in Blister.",
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 16.0),
                Container(
                  decoration: BoxDecoration(image: DecorationImage(image: Images.marble, fit: BoxFit.cover)),
                  child: Container(
                    color: Colors.white.withOpacity(0.4),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Il rapporto fra la famiglia Orler ed i suoi clienti viene, per universale principio, considerato sacro.",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
