import 'dart:convert';
import 'package:http/http.dart' as http;
import '../interfaces/service.dart';
import '../entity/cep.dart';

class Widenet implements IService<Cep> {
  @override
  Future<Cep> getAddress(String cep) async {
    final url = 'http://apps.widenet.com.br/busca-cep/api/cep/${cep}.json';
    var response = await http.get(url);
    var body = response.body;
    return this.decoder(body);
  }

  @override
  Cep decoder(String body) {
    Map<String, dynamic> payload = json.decode(body);

    return Cep(
      cep: payload['code'],
      neighborhood: payload['district'],
      street: payload['address'],
      city: payload['city'],
      state: payload['state'],
    );
  }
}
