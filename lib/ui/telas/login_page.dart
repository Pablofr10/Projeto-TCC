import 'package:flutter/material.dart';
import 'package:projeto_tcc/ui/telas/home_tela.dart';
import 'package:projeto_tcc/ui/telas/paciente_tela.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  String _userName, _senha;

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
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      padding: EdgeInsets.only(
                          top: 4, left: 16, right: 16, bottom: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.red, blurRadius: 5),
                          ]),
                      child: TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.card_membership,
                            color: Colors.red,
                          ),
                          hintText: 'Login',
                        ),
                        validator: (input) =>
                            input.length < 0 ? 'Digite um login válido' : null,
                        onSaved: (input) => _userName = input,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      padding: EdgeInsets.only(
                          top: 4, left: 16, right: 16, bottom: 4),
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
                        validator: (input) => input.length < 0
                            ? 'Digite a senha cadastrada'
                            : null,
                        onSaved: (input) => _senha = input,
                        obscureText: true,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 200.0,
                      height: 45.0,
                      child: RaisedButton(
                        onPressed: _submit,
                        child: Text(
                          'Entrar',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        color: Colors.redAccent,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ]),
    ));
  }

  void _submit() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();

      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomePage()));
    }
  }
}
