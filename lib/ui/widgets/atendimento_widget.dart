import 'package:flutter/material.dart';

import 'horarios_widget.dart';

class AtendimentoWidgets extends StatelessWidget {
  final String nome;

  AtendimentoWidgets(this.nome);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Text(
            nome,
            style: TextStyle(color: Colors.white, fontSize: 30),
          )),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HorariosWidget(nome),
          ));
          
        },
      ),
    );
  }
}
