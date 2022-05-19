import 'dart:async';
import 'dart:io';
import 'dart:convert';

void caixa(int value) {
  // Escreva seu programa a partir daqui
 int cem = 0;
  int cinquenta = 0;
  int vinte = 0;
  int dez = 0;
  int cinco = 0;
  int dois = 0;
  String msg = '';
  String separator = '';

  if (value % 5 == 1 || value % 5 == 3) {
    value -= 5;
    cinco++;
  }

  if (value >= 100) {
    cem = value ~/ 100;
    value %= 100;
    msg = '$cem de 100';
  }

  if (value >= 50) {
    cinquenta = value ~/ 50;
    value %= 50;
    separator = msg.isEmpty ? '' : ', ';
    msg += '$separator$cinquenta de 50';
  }

  if (value >= 20) {
    vinte = value ~/ 20;
    value %= 20;
    separator = msg.isEmpty ? '' : ', ';
    msg += '$separator$vinte de 20';
  }

  if (value >= 10) {
    dez = value ~/ 10;
    value %= 10;
    separator = msg.isEmpty ? '' : ', ';
    msg += '$separator$dez de 10';
  }

  final cincoTemp = value ~/ 5;
  if (cincoTemp > 0) {
    cinco += cincoTemp;
    value %= 5;
  }
  if (value % 2 != 0) {
    cinco--;
    value += 5;
  }

  if (cinco > 0) {
    separator = msg.isEmpty ? '' : ', ';
    msg += '$separator$cinco de 5';
  }

  if (value >= 2) {
    dois = value ~/ 2;
    value %= 2;
    separator = msg.isEmpty ? '' : ', ';
    msg += '$separator$dois de 2';
  }

  print(msg);
}

// Nao deletar
void main() => readLine().listen(processLine);

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) => caixa(int.parse(line.split(' ').first));

