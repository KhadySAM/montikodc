import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/Inscription/inscriptionPassword.dart';

class inscriptionPhoneEmailPage extends StatefulWidget {
  final String title;

  const inscriptionPhoneEmailPage({Key? key, required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _inscriptionPhoneEmailPage();
}

class _inscriptionPhoneEmailPage extends State<inscriptionPhoneEmailPage> {
  @override
  void initState() {
 
    super.initState();
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,

  
        child: Scaffold(
          appBar: AppBar(
            leading: const BackButton(color: Colors.black),
            title: Text(
              widget.title,
              style: const TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
            shadowColor: Colors.white,
            backgroundColor: Colors.white,
            bottom: const TabBar(labelColor: Colors.black, tabs: [
              Tab(
                text: 'Téléphone',
              ),
              Tab(
                text: 'Email',
              )
            ]),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    margin: const EdgeInsets.only(top: 30),
                    child: Column(children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Row(
                          children: const [
                            Text(
                              'Numero de téléphone',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Veuillez saisir un numero de téléphone !';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                          child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 50.0,
                            margin: const EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black)),
                              child: const Text('Envoyer un code'),
                            ),
                          )
                        ],
                      ))
                    ]),
                  )
                ]),
              ),
              Center(
                child: Column(children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    margin: const EdgeInsets.only(top: 30),
                    child: Column(children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Row(
                          children: const [
                            Text(
                              'Adresse mail',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Veuillez saisir une adresse mail !';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                          child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 50.0,
                            margin: const EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      InscriptionPassword(
                                      title: 'inscription')));
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black)),
                              child: const Text('Suivant'),
                            ),
                          )
                        ],
                      ))
                    ]),
                  )
                ]),
              ),
            ],
          ),
        ),
      );
}
