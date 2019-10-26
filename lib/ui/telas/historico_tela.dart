import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:projeto_tcc/core/model/historico.dart';
import 'package:projeto_tcc/ui/widgets/lista_widget.dart';

class HistoricoPage extends StatefulWidget {

  @override
  _HistoricoTelaState createState() => _HistoricoTelaState();
}

  Future<List<Historico>> fetchHistorico() async {
    final response = await http.get("http://10.0.2.2:3000/historico"); 
    return parseHistorico(response.body);
  }

  List<Historico> parseHistorico(String body){
    final parsed = json.decode(body).cast<Map<String, dynamic>>();

    return parsed.map<Historico>((json) => Historico.fromJson(json)).toList();
  }

class _HistoricoTelaState extends State<HistoricoPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Histórico',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
        ),
        body: FutureBuilder<List<Historico>>(
            future: fetchHistorico(),
            builder: (context, snapshot) {
              print(snapshot);
              return snapshot.hasData
               ? ListaWidget(historico: snapshot.data) 
               : Center(child: CircularProgressIndicator());
            }));
  }
}
