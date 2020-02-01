class Cep {
  final String cep;
  final String street;
  final String neighborhood;
  final String city;
  final String state;

  Cep({this.cep, this.street, this.neighborhood, this.city, this.state});

  String getCep() {
    return this.cep;
  }

  String getCity() {
    return this.city;
  }

  String getState() {
    return this.state;
  }

  String getNeighborhood() {
    return this.neighborhood;
  }

  String getStreet() {
    return this.street;
  }
}
