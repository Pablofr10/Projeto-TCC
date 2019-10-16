import 'package:flutter/material.dart';
import 'package:projeto_tcc/ui/habas/consulta_haba.dart';
import 'package:projeto_tcc/ui/widgets/atendimento_widget.dart';

class AgendamentoTela extends StatelessWidget {
  const AgendamentoTela({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendamento'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Text('Procedimentos.', style: TextStyle(fontSize: 30, fontFamily: 'Bitter', fontWeight: FontWeight.bold)),
            SizedBox(height: 30,),
            AtendimentoWidgets('Fisioterapia'),
            AtendimentoWidgets('Perícia'),
            AtendimentoWidgets('Atestado'),
          ],
        ),
      ),
    );
  }
}
