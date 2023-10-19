import 'dart:convert';

class ViacepModel {
  // criando classe e seus atributos

  String cep;
  String logradouro;
  String? complemento;
  String bairro;
  String localidade;
  String uf;
  String ibge;
  String? gia;
  String ddd;
  String siafi;

  // construtor da classe

  ViacepModel({
    required this.cep,
    required this.logradouro,
    this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.ibge,
    this.gia,
    required this.ddd,
    required this.siafi,
  });

  //toMap()
  //metodo que pega o nosso objeto Telefone e transforma em um Objeto Map<String, dynamic>
  Map<String, dynamic> toMap() {
    return {
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'ibge': ibge,
      'gia': gia,
      'ddd': ddd,
      'siafi': siafi,
    };
  }

  //toJson
  //metodo que pega um Map<String, dynamic> e transforma em um json pelo pacote dart:convert (jsonEncode)
  String toJson() => jsonEncode(toMap());

  factory ViacepModel.fromMap(Map<String, dynamic> map) {
    return ViacepModel(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      bairro: map['bairro'] ?? '',
      localidade: map['localidade'] ?? '',
      uf: map['uf'] ?? '',
      ibge: map['ibge'] ?? '',
      ddd: map['ddd'] ?? '',
      siafi: map['siafi'] ?? '',
    );
  }

  factory ViacepModel.fromJson(String json) =>
      ViacepModel.fromMap(jsonDecode(json));

  @override
  String toString() {
    return "CEP ($cep): $logradouro, $bairro, $localidade - $uf";
  }
}
