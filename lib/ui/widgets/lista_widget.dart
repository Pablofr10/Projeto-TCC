import 'package:flutter/material.dart';
import 'package:projeto_tcc/core/model/historico.dart';
import 'package:intl/intl.dart';

class ListaWidget extends StatelessWidget {

  final List<Historico> historico;

  ListaWidget({this.historico});

  
dateFormat(String format, date) {
    if (date == null) return '??:??';
    DateTime now = DateTime.parse(date);
    String formattedDate = DateFormat(format).format(now);

    return formattedDate;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: historico.length,
        itemBuilder: (context, index) {
        return ListTile(
            leading: Icon(Icons.person),
            title: Container(
              width: 500,
              child: SizedBox(
                    width: 200,
                    child: Text(historico[index].especialidade),
                  ),
            ),
            subtitle: Row(
              children: <Widget>[
                
                Text(dateFormat('dd/MM/yy', historico[index].dataAgendamento)),
                SizedBox(
                  width: 9,
                ),
                Icon(
                  Icons.timer,
                  size: 12,
                ),
                Text(historico[index].horaAgendamento),
              ],
            ));
      }),
    );
  }
}
