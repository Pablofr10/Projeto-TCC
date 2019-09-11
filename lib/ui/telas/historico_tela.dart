import 'package:flutter/material.dart';

class HistoricoPage extends StatelessWidget {
  const HistoricoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Histórico',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 10),
          child: ListView.builder(itemBuilder: (context, index) {
            return ListTile(
                leading: Icon(Icons.person),
                title: Container(
                  width: 500,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 200,
                        child: Text('Pericía Médica'),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          index < 3 ? 'Confirmado' : 'Realizado',
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
                subtitle: Row(
                  children: <Widget>[
                    Text('30/08/2019'),
                    SizedBox(
                      width: 9,
                    ),
                    Icon(
                      Icons.timer,
                      size: 12,
                    ),
                    Text('12:00'),
                  ],
                ));
          }),
        ));
  }
}
