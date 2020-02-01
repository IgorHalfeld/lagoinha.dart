import 'dart:convert';
import 'package:http/http.dart' as http;
import '../interfaces/service.dart';
import '../entity/cep.dart';

class ViaCep implements IService<Cep> {
  @override
  Future<Cep> getAddress(String cep) async {
    var response = await http.get('https://viacep.com.br/ws/$cep/json/');
    var body = response.body;
    return this.decoder(body);
  }

  @override
  Cep decoder(String body) {
    Map<String, dynamic> payload = json.decode(body);

    return Cep(
      cep: payload['cep'],
      neighborhood: payload['bairro'],
      street: payload['logradouro'],
      city: payload['localidade'],
      state: payload['uf'],
    );
  }
}
