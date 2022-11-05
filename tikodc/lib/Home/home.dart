import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tikodc/Home/Accueil.dart';
import 'package:tikodc/Home/monCompte.dart';
import 'package:tikodc/Home/newPublication.dart';
import 'package:tikodc/Home/notification.dart';
import 'package:tikodc/Home/now.dart';

class Acceuilpage extends StatefulWidget {
  final String title;

  const Acceuilpage({Key? key, required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _acceuilpage();
}

class _acceuilpage extends State<Acceuilpage> {
  int IndexPage = 0;

  Widget Acceuil = MonAcceuil();
  Widget Compte = MonCompte();
  Widget Notification = MesNotification();
  Widget Now = MyNow();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: recupererPage(),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF141518),
          type: BottomNavigationBarType.fixed,
          currentIndex: IndexPage,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: (int index) => {changePage(index)},
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Acceuil',
                activeIcon: FaIcon(FontAwesomeIcons.houseChimney)),
            const BottomNavigationBarItem(
                icon: Icon(Icons.flash_on),
                label: 'Now',
                activeIcon: FaIcon(FontAwesomeIcons.boltLightning)),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/tiktok_add.png',
                  height: 25,
              ),
                  label: ''),
            const BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.message),
                activeIcon: FaIcon(FontAwesomeIcons.solidMessage),
                label: 'Boite de reception'),
            const BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.user),
                label: 'Profil',
                activeIcon: FaIcon(FontAwesomeIcons.solidUser))
          ]),
    );
  }

  Widget recupererPage() {
    if (IndexPage == 0) {
      return Acceuil;
    } else if (IndexPage == 1) {
      return Now;
    } else if (IndexPage == 3) {
      return Notification;
    } else if (IndexPage == 4) {
      return Compte;
    } else {
      IndexPage = 0;
      return Acceuil;
    }
  }

  void changePage(int index) {
    if (index == 2) {
      _openCamera(context);
     
    } else {
      setState(() {
        IndexPage = index;
      });
    }
  }


  void _openCamera(context) {
    showModalBottomSheet(
        context: (context),
        builder: (BuildContext bc) {
          return NewPublication();
        });
  }
}
