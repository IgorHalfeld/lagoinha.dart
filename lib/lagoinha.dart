import './entity/cep.dart';
import './services/viacep.dart';
import './services/widenet.dart';

class Lagoinha {
  Future<Cep> getAddress(String cep) async {
    var widenet = new Widenet();
    var viacep = new ViaCep();

    var results =
        await Future.wait([widenet.getAddress(cep), viacep.getAddress(cep)]);

    // looking for a JS Promise.race
    for (var r in results) {
      if (r.getCep() != null) {
        return r;
      }
    }

    return viacep.getAddress(cep);
  }
}
