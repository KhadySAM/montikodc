//widget acceuil
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/post/video.dart';
import 'package:video_player/video_player.dart';

import '../post/autreInfos.dart';

class MonAcceuil extends StatefulWidget {
  const MonAcceuil({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MonAcceuil();
}

class _MonAcceuil extends State<MonAcceuil> {
  List<Map> tikOdcItems = [
    {
      'couleur': const Color(0xFF141518),
      'titre': '1',
      'video': 'assets/videos/video_1.mp4',
      'infos': {
        'artiste': 'Bazoumana Sissoko',
        'like': '24.3K',
        'commentaires': 299,
        'partages': 134,
        'description': 'dioba chute de Modibo Keita'
      },
      'user': {'pseudo': 'username', 'nom': 'xxxx', 'prenom': 'yyyy'}
    },
    {
      'couleur': const Color(0xFF141518),
      'titre': '2',
      'video': 'assets/videos/video_2.mp4',
      'infos': {
        'artiste': 'Djeneba_Seck',
        'like': '12.3K',
        'commentaires': 119,
        'partages': 34,
        'description': 'Armée Mali 22 Septembre'
      },
      'user': {'pseudo': 'username', 'nom': 'xxxx', 'prenom': 'yyyy'}
    },
    {
      'couleur': const Color(0xFF141518),
      'titre': 'kenebolen',
      'video': 'assets/videos/video_3.mp4',
      'infos': {
        'artiste': 'Doussouba Bagayoko',
        'like': '123.0K',
        'commentaires': '2.0K',
        'partages': '1.0K',
        'description': 'Dounoukassilen'
      },
      'user': {'pseudo': 'username', 'nom': 'xxxx', 'prenom': 'yyyy'}
    },
    {
      'couleur': const Color(0xFF141518),
      'titre': 'Walengnouman',
      'video': 'assets/videos/video_4.mp4',
      'infos': {
        'artiste': 'Abdoulaye Diabate',
        'like': '12.0K',
        'commentaires': 123,
        'partages': 78,
        'description': 'Bamanan ya keh'
      },
      'user': {'pseudo': 'username', 'nom': 'xxxx', 'prenom': 'yyyy'}
    },
    {
      'couleur': const Color(0xFF141518),
      'titre': 'Worotan',
      'video': 'assets/videos/video_5.mp4',
      'infos': {
        'artiste': 'Oumou_Sangare',
        'like': '1.3M',
        'commentaires': '233.0K',
        'partages': '783.0K',
        'description': 'woronalen deh'
      },
      'user': {'pseudo': 'username', 'nom': 'xxxx', 'prenom': 'yyyy'}
    },
    {
      'couleur': const Color(0xFF141518),
      'titre': 'Nene',
      'video': 'assets/videos/video_6.mp4',
      'infos': {
        'artiste': 'Sali_Sidibe',
        'like': '1.3M',
        'commentaires': '273.0K',
        'partages': '1783.0K',
        'description': 'deh ko'
      },
      'user': {'pseudo': 'username', 'nom': 'xxxx', 'prenom': 'yyyy'}
    },
  ];

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 2,

      child: CarouselSlider(
          items: tikOdcItems.map((Item) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Item['couleur'],
                    child: Stack(children: [
                      VideoWidget(
                        videoUrl: Item['video'],
                      ),
                      Center(
                        child: Column(children: [
                          Container(
                            height: 100,
                            padding: const EdgeInsets.only(top: 40),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Positioned(
                                    left: 0,
                                    child: Row(
                                      children: const [
                                        SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: Icon(
                                              Icons.live_tv,
                                              color: Colors.white,
                                            )),
                                      ],
                                    )),
                               const Text(
                                  'Abonnement',
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(width: 20),
                                const Text(
                                  'Pour toi',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(width: 60),
                                Positioned(
                                    right: 0,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.search,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ]),
                      ),
                      AutresInfosdelaPub(
                          infos: Item['infos'], user: Item['user'])
                    ]));
              },
            );
          }).toList(),
          options: CarouselOptions(
              enableInfiniteScroll: false,
              height: double.infinity,
              viewportFraction: 1,
              scrollDirection: Axis.vertical)));
}


