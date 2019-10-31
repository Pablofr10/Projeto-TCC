import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:projeto_tcc/core/model/paciente.dart';
import 'package:projeto_tcc/ui/telas/login_page.dart';

class PerfilWidget extends StatelessWidget {
  final List<Paciente> perfil;

  PerfilWidget({this.perfil});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8),
      children: <Widget>[
        Center(
          child: Container(
            width: 120,
            height: 120,
            decoration: new BoxDecoration(
              color: Colors.red[100],
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.photo,
              size: 50,
            ),
          ),
        ),
        Text(
          perfil[0].nome,
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Bitter',
          ),
          textAlign: TextAlign.center,
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          padding: EdgeInsets.only(top: 12),
          height: 50,
          color: Colors.deepOrange[50],
          child: Text(
            "Documento: ${perfil[0].idPaciente}",
            style: TextStyle(fontSize: 18, fontFamily: 'Bitter'),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          padding: EdgeInsets.only(top: 12),
          height: 50,
          color: Colors.deepOrange[50],
          child: Text(
            'Sexo: ${perfil[0].sexo}',
            style: TextStyle(fontSize: 18, fontFamily: 'Bitter'),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          padding: EdgeInsets.only(top: 12),
          height: 50,
          color: Colors.deepOrange[50],
          child: Text(
            'Telefone: ${perfil[0].telefone}',
            style: TextStyle(fontSize: 18, fontFamily: 'Bitter'),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          padding: EdgeInsets.only(top: 12),
          height: 60,
          color: Colors.deepOrange[50],
          child: Text(
            'Endereço: ${perfil[0].endereco}',
            style: TextStyle(fontSize: 18, fontFamily: 'Bitter'),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          padding: EdgeInsets.only(top: 12),
          height: 60,
          child: RaisedButton(
            color: Colors.red,
              child: Text('Sair',
                  style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Bitter'),
                  textAlign: TextAlign.center),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginPage()));
              }),
        ),
      ],
    );
  }
}
