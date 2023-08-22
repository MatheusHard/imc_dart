import 'dart:convert';
import 'dart:io';

import 'package:projeto_imc/model/pessoa.dart';
import 'package:projeto_imc/projeto_imc.dart' as projeto_imc;

void main(List<String> arguments) {

  ///Nome
  print("Digite seu Nome:");
  var line = stdin.readLineSync(encoding: utf8);
  var nome = line;

  ///Altura
  print("Digite sua Altura:");
  line = stdin.readLineSync(encoding: utf8);
  double altura = double.parse(line ?? '0');

  ///Peso
  print("Digite seu Peso:");
  line = stdin.readLineSync(encoding: utf8);
  double peso = double.parse(line ?? '0');

  ///Instanciar Objeto
  Pessoa p = Pessoa(nome!, altura, peso);

  ///Exibir resultado
  print(projeto_imc.calcularImc(p));


}
