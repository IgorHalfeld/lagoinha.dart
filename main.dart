import './lib/lagoinha.dart';

main() async {
  var lagoinha = new Lagoinha();
  var address = await lagoinha.getAddress('06233-030');

  print(address.getState());
  print(address.getNeighborhood());
  print(address.getCity());
  print(address.getStreet());
  print(address.getCep());
}
