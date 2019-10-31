import 'package:flutter/material.dart';

class HorariosWidget extends StatelessWidget {
  String title;

  HorariosWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(20, (index) {
          return Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.blueAccent)),
              child: RaisedButton(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Dia ${index + 1}',
                      style: Theme.of(context).textTheme.headline,
                    ),
                    Text('Horário: ${index + 1 * 3}:00'),
                    Text(index > 6 ? 'Agendar' : 'Lotado', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.lightBlue),)
                  ],
                ),
                onPressed: () {
                   AlertDialog alert = AlertDialog(
    title: Text("My title"),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );
                },
              ));
        }),
      ),
    );
  }
}
