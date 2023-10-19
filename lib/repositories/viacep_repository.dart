import 'package:http/http.dart' as http;
import 'package:viacepapp/model/viacep_model.dart';

class ViacepRepository {
  Future<ViacepModel> buscarCep(String cep) async {
    final viaCepResponde = await http.get(Uri.parse('https://viacep.com.br/ws/$cep/json/'));

    return ViacepModel.fromJson(viaCepResponde.body);
  }
}
