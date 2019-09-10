import 'package:flutter/material.dart';
import 'package:projeto_tcc/ui/telas/login_page.dart';
import 'package:projeto_tcc/ui/widgets/quad_widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Material(
      child: Container(
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/imagens/home.jpg'),
            ),
            Positioned(
                height: size.height / 2 * 1.3,
                width: size.width,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(1.0, 6.0),
                          blurRadius: 40.0,
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            QuadWidgets(Icons.person, 'Perfil', LoginPage()),
                            QuadWidgets(
                                Icons.calendar_today, 'Perfil', LoginPage()),
                            QuadWidgets(
                                Icons.calendar_today, 'Perfil', LoginPage())
                          ],
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
