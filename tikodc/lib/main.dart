import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tikodc/Inscription/inscription.dart';
import 'package:tikodc/loginPhoneEmail.dart';

void main() async {
  await Future.delayed(const Duration(milliseconds: 500));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TickOdc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter TikODC'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  void initialisation() async {
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
  }

  @override
  Widget build(BuildContext context) {
    //variables

    // ignore: non_constant_identifier_names
    double LongueurEcran = MediaQuery.of(context).size.height;
    // ignore: non_constant_identifier_names
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
                    'Connecte-toi à TikODC',
                    
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
                                const loginPhonePage(title: 'Connexion')));
                      },
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      leading: const Icon(Icons.account_circle_outlined),
                      title: const Text('Utiliser un téléphone/e-mail'),
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
                        color: Color.fromARGB(156, 13, 102, 174),
                      ),
                      title: Text('Continuer avec Twitter'),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'En continuant, tu acceptes les Conditions dutilisation de TikTok et confirmes avoir lu la Politique deconfidentialité de TikTOK',
                      textAlign: TextAlign.center,
                      style: TextStyle(),
                    ),
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 30,
                          bottom: 0,
                          left: 25,
                        ),
                        child: Text(
                          'Vous n’avez pas de compte ?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 30,
                          bottom: 0,
                        ),
                        child: Text(
                          'Inscription ?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 218, 25, 25),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // const Padding(
                  //   padding: EdgeInsets.only(
                  //     top: 30,
                  //     bottom: 0,
                  //   ),
                  //   child: Text(
                  //     'Vous n’avez pas de compte ?',
                  //     textAlign: TextAlign.center,
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 15,
                  //     ),
                  //   ),
                  // ),
                  // Card(
                  //   shape: const RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.all(Radius.circular(5))),
                  //   color: const Color.fromARGB(255, 218, 25, 25),
                  //   child: ListTile(
                  //     onTap: () {
                  //       Navigator.of(context).push(MaterialPageRoute(
                  //           builder: (context) =>
                  //               const inscriptionPage(title: 'Vous n’avez pas de compte ?')));
                  //     },
                  //     title: const Text(
                  //       'Vous n’avez pas de compte ?',
                  //       textAlign: TextAlign.center,
                  //       style: TextStyle(
                  //           color: Color.fromARGB(255, 255, 255, 255),
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 20),
                  //     ),
                  //   ),
                  // )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
