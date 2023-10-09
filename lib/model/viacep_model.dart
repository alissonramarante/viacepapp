import 'dart:convert';

class ViacepModel {
  String? _cep;
  String? _logradouro;
  String? _bairro;
  String? _cidade;
  String? _estado;

  ViacepModel({
    String? cep,
    String? logradouro,
    String? bairro,
    String? cidade,
    String? estado,
  }) {
    if (cep != null) {
      _cep = cep;
    }
    if (logradouro != null) {
      _logradouro = logradouro;
    }
    if (bairro != null) {
      _bairro = bairro;
    }
    if (cidade != null) {
      _cidade = cidade;
    }
    if (estado != null) {
      _estado = estado;
    }
  }

  ViacepModel.fromJson(Map<String, dynamic> json) {
    _cep = json['cep'];
    _logradouro = json['logradouro'];
    _bairro = json['bairro'];
    _cidade = json['localidade'];
    _estado = json['uf'];
  }

  Map<String, dynamic> toJson() {
    return {
      'cep': _cep,
      'logradouro': _logradouro,
      'bairro': _bairro,
      'localidade': _cidade,
      'uf': _estado,
    };
  }
}
