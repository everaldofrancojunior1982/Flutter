import 'dart:io';

void main() {
  // Nao deletar
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  // Variaveis iniciais 
  final num1 = int.parse(inputs[0]);
  final num2 = int.parse(inputs[1]);
  final num3 = int.parse(inputs[2]);

  // Escreva seu programa a partir daqui

  // Escreva seu programa a partir daqui
if (num1 == num2 || num1 == num3 || num2 == num3) {
print('Entre apenas numeros diferentes');
} else {
int posicao1;
int posicao2;
int posicao3;
if (num1 > num2) {
if (num1 > num3) {
// num1 > num2 66 numi > num3
posicao1 = num1;
if (num3 > num2) {
posicao2 = num3;
posicao3 = num2;
} else {
posicao2 = num2;
posicao3 = num3;
}
}
else {
// num3 > num1 > num2
posicao1 = num3;
posicao2 = num1;
posicao3 = num2;
}
} else {
// num2 > numi
if (num2 > num3) {
//num2 > n umi 66 num2 > num3
posicao1 = num2;
if (num3 > num1) {
posicao2 = num3;
posicao3 = num1;
} else {
posicao2 = num1;
posicao3 = num3;
}
} else {
// num3 > num2 > numi
posicao1 = num3;
posicao2 = num2;
posicao3 = num1;
}
}
print('$posicao1 $posicao2 $posicao3');
}
}