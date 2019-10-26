import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:projeto_tcc/core/model/paciente.dart';
import 'package:projeto_tcc/ui/widgets/perfil_widget.dart';

class PacientePage extends StatefulWidget {
  @override
  _PacienteTelaState createState() => _PacienteTelaState();
}

final int id = 8888;

Future<List<Paciente>> fetchPaciente() async {
  final response = await http.get("http://10.0.2.2:3000/users/8888");
  return parsePaciente(response.body);
}

List<Paciente> parsePaciente(String body) {
  final parsed = json.decode(body).cast<Map<String, dynamic>>();

  return parsed.map<Paciente>((json) => Paciente.fromJson(json)).toList();
}

class _PacienteTelaState extends State<PacientePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Perfil',
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: FutureBuilder<List<Paciente>>(
            future: fetchPaciente(),
            builder: (context, snapshot) {
              return snapshot.hasData
                  ? PerfilWidget(perfil: snapshot.data,)
                  : Center(child: CircularProgressIndicator());
            }));
  }
}
