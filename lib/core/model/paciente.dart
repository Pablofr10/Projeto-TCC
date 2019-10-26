class Paciente {
  int idPaciente;
  String nome;
  String cpf;
  String dtNascimento;
  String telefone;
  String endereco;
  int idSexo;
  int idHistorico;
  String foto;
  String sexo;

  Paciente(
      {this.idPaciente,
      this.nome,
      this.cpf,
      this.dtNascimento,
      this.telefone,
      this.endereco,
      this.idSexo,
      this.idHistorico,
      this.foto,
      this.sexo});

  Paciente.fromJson(Map<String, dynamic> json) {
    idPaciente = json['id_paciente'];
    nome = json['nome'];
    cpf = json['cpf'];
    dtNascimento = json['dt_nascimento'];
    telefone = json['telefone'];
    endereco = json['endereco'];
    idSexo = json['id_sexo'];
    idHistorico = json['id_historico'];
    foto = json['foto'];
    sexo = json['nome_sexo'];
  }
}