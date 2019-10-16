import 'dart:async';


class HistoricoBloc{

  final StreamController<String> _streamController = StreamController<String>();
  Sink<String> get input => _streamController.sink;
  Stream get output => _streamController.stream; 



  _seachHistorico(String historico){
    

  }

}