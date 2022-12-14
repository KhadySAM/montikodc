import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tikodc/Inscription/inscriptionPhoneEmail.dart';
import 'package:tikodc/main.dart';

class inscriptionPage extends StatefulWidget {
  final String title;

  const inscriptionPage({Key? key, required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _inscriptionPage();
}

class _inscriptionPage extends State<inscriptionPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double LongueurEcran = MediaQuery.of(context).size.height;
    double LargeurEcran = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: LongueurEcran * 0.3,
              color: Colors.white,
              width: LargeurEcran,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Inscrit toi sur TikODC',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(left: 30, right: 30),
              alignment: Alignment.topCenter,
              child: ListView(
                children: [
                  Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const inscriptionPhoneEmailPage(
                                    title: 'inscription')));
                      },
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading: const Icon(Icons.account_circle_outlined),
                      title: const Text('Utiliser un t??l??phone/e-mail'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading:
                          Icon(Icons.facebook_outlined, color: Colors.blue),
                      title: Text('Continuer avec Facebook'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading: FaIcon(FontAwesomeIcons.google),
                      title: Text('Continuer avec Google'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Color.fromARGB(255, 25, 17, 48), width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading: FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Color.fromARGB(255, 5, 3, 100),
                      ),
                      title: Text('Continuer avec Twitter'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'Vous avez d??ja un compte ?',
                      textAlign: TextAlign.center,
                      style: TextStyle(),
                    ),
                  ),
                  Card(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    color: const Color.fromARGB(255, 218, 25, 25),
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MyHomePage(title: '')));
                      },
                      title: const Text(
                        'Connexion',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
