import 'package:imc1/imc1.dart' as imc1;

void main() {
  final peso = 80;
  final altura = 1.70;
  final imc = peso ~/ (altura * altura);
  print(imc);
}