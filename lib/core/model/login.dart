 import 'dart:async';
 import 'dart:convert';
 import 'package:http/http.dart' as http;


class Login {
  int idLogin;
  String senha;
  int idPaciente;

   
  Future<Login> fetchPost(int idUser) async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/posts/1');

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON.
    return Login.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}

  Login({this.idLogin, this.senha, this.idPaciente});

  Login.fromJson(Map<String, dynamic> json) {
    idLogin = json['id_login'];
    senha = json['senha'];
    idPaciente = json['id_paciente'];
  }

}