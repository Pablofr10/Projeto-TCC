import 'package:flutter/material.dart';
import 'package:projeto_tcc/ui/telas/historico_tela.dart';
import 'package:projeto_tcc/ui/widgets/quad_widgets.dart';

import 'agendamento_tela.dart';
import 'paciente_tela.dart';

class HomePage extends StatefulWidget {

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/imagens/home.jpg'),
            ),
            Positioned(
                height: size.height / 2 * 1.4,
                width: size.width,
                bottom: 0,
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, right: 20, left: 20),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(bottom: 10, top: 10),
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Serviços',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Bitter',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              QuadWidgets(Icons.assignment, 'Agendamento',
                                  AgendamentoTela()),
                              QuadWidgets(Icons.assignment_ind, 'Histórico',
                                  HistoricoPage())
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              QuadWidgets(
                                  Icons.chat, 'Contato', HistoricoPage()),
                              QuadWidgets(Icons.person, 'Perfil', PacientePage())
                            ],
                          ),
                          SizedBox(height: 15),
                          Container(
                            width: size.width,
                            decoration: BoxDecoration(
                              color: Colors.yellow[100],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Column(
                              children: <Widget>[
                                Text('Avisos',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Bitter',
                                        fontWeight: FontWeight.bold)),
                                Container(
                                  width: size.width,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Text(
                                        'A Policlínica não funcionara nos dias 26 e 24',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Text(
                                        'Dia 28/09 será a comemoração do dia dos Bombeiros',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
