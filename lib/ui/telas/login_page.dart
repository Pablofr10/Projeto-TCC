import 'package:flutter/material.dart';
import 'package:projeto_tcc/ui/telas/home_tela.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 50),
              width: 200,
              child: Image.asset('assets/imagens/login.jpg')),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 93),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    padding:
                        EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.red, blurRadius: 5),
                        ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Colors.red,
                        ),
                        hintText: 'Usuário',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    padding:
                        EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.red, blurRadius: 5),
                        ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.vpn_key,
                          color: Colors.red,
                        ),
                        hintText: 'Senha',
                      ),
                    ),
                  ),
                  Container(
                    width: 350,
                    height: 70,
                    padding: EdgeInsets.only(top: 20),
                    child: RaisedButton(
                      color: Colors.red,
                      child: Text(
                        'Entrar',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      },
                    ),
                  ),
                ],
              ),
            )
          ])),
    );
  }
}
