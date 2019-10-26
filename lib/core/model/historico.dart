class Historico {
  int idHistorico;
  int idAgendamento;
  String dataAgendamento;
  String horaAgendamento;
  String descAgendamento;
  int idHistoricoFk;
  int idProfissionalFk;
  int idProfissional;
  String especialidade;
  String nomeProfissional;

  Historico(
      {this.idHistorico,
      this.idAgendamento,
      this.dataAgendamento,
      this.horaAgendamento,
      this.descAgendamento,
      this.idHistoricoFk,
      this.idProfissionalFk,
      this.idProfissional,
      this.especialidade,
      this.nomeProfissional});

  Historico.fromJson(Map<String, dynamic> json) {
    idHistorico = json['id_historico'];
    idAgendamento = json['id_agendamento'];
    dataAgendamento = json['data_agendamento'];
    horaAgendamento = json['hora_agendamento'];
    descAgendamento = json['desc_agendamento'];
    idHistoricoFk = json['id_historico_fk'];
    idProfissionalFk = json['id_profissional_fk'];
    idProfissional = json['id_profissional'];
    especialidade = json['especialidade'];
    nomeProfissional = json['nome_profissional'];
  }

}