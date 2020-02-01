class IService<T> {
  Future<T> getAddress(String cep) {
    throw Exception('not implemented yet');
  }

  T decoder(String body) {
    throw Exception('not implemented yet');
  }
}
