import 'dart:convert';
import 'dart:io';

import 'package:projeto_imc/model/pessoa.dart';
import 'package:projeto_imc/projeto_imc.dart' as projeto_imc;

void main(List<String> arguments) {

  ///TAxa de JUros com HErança:
    /*String? nomeTitular = stdin.readLineSync();
  int? numeroConta = int.tryParse(stdin.readLineSync() ?? "");
  double? saldo = double.tryParse(stdin.readLineSync() ?? "");
  double? taxaJuros = double.tryParse(stdin.readLineSync() ?? "");

  if (nomeTitular == null || numeroConta == null || saldo == null || taxaJuros == null) {
    print("Entrada inválida.");
    return;
  }

  var contaPoupanca = ContaPoupanca(numeroConta, nomeTitular, saldo, taxaJuros);

  print("Conta Poupanca:");
  contaPoupanca.exibirInformacoes();*/

  ///FIM TAxa de JUros com HErança:

  ///Abrindo contas
  /*int numeroConta = int.parse(stdin.readLineSync()!);
  String nomeTitular = stdin.readLineSync()!;
  double saldo = double.parse(stdin.readLineSync()!);

  Bancaria conta = Bancaria(numeroConta, nomeTitular, saldo);

  print("Informacoes:");
  print('''Conta: ${conta.numeroConta.toString()}''');
  print('''Titular: ${conta.nomeTitular.toString()}''');
  print('''Saldo: R\$ ${conta.saldo.toString()}''');*/

  ///FIM Abrindo CONTAS

  //Entrada dos tipos de ativos
  /*print("Qtd Ativos:");
  var quantidadeAtivos = int.parse(stdin.readLineSync()!);

  List<String> ativos = [];

  for (var i = 0; i < quantidadeAtivos; i++) {
    var codigoAtivo = stdin.readLineSync()!;
    ativos.add(codigoAtivo);
  }

  //TODO: Ordenar os ativos em ordem alfabética.
  ativos.sort();
  print(ativos);
  //TODO: Imprimir a lista de ativos ordenada, conforme a tabela de exemplos.*/
 /* Conta c1 = Conta();
  c1.setSaldoAtual(1000);
  c1.setValorDeposito(500);
  c1.setValorRetirada(200);

  Conta c2 = Conta();
  c2.setSaldoAtual(100);
  c2.setValorDeposito(10);
  c2.setValorRetirada(50);

  Conta c3 = Conta();
  c3.setSaldoAtual(4000);
  c3.setValorDeposito(1500);
  c3.setValorRetirada(200);



  var lista = [];
  lista.add(c1);
  lista.add(c2);
  lista.add(c3);



  for(int i = 0; i<lista.length; i++) {
    double saldoAtual = lista[i].getSaldoAtual();
    double valorDeposito = lista[i].getValorDeposito();
    double valorRetirada = lista[i].getValorRetirada();

    double resultado = (saldoAtual + valorDeposito) - valorRetirada;

    print('''Saldo atualizado na conta: $resultado''');
  }*/

}
class ContaPoupanca extends Bancaria {

  ///Taxa de Juros com HErança
  double taxaJuros;

  ContaPoupanca(int numeroConta, String nomeTitular, double saldo, this.taxaJuros) :  super(numeroConta, nomeTitular, saldo);

  @override
  void exibirInformacoes() {
    super.exibirInformacoes();
    print('''Taxa de juros: $taxaJuros%''');
  }
}
class Bancaria {
  int numeroConta;
  String nomeTitular;
  double saldo;

  Bancaria(this.numeroConta, this.nomeTitular, this.saldo);

  void exibirInformacoes() {
    print(nomeTitular);
    print(numeroConta);
    print("Saldo: R\$ ${saldo.toStringAsFixed(1)}");
  }

  int getNumeroConta() {
    return numeroConta;
  }

  String getNomeTitular() {
    return nomeTitular;
  }

  double getSaldo() {
    return saldo;
  }
}

class Conta {

  double _saldoAtual = 0;
  double _valorDeposito = 0;
  double _valorRetirada = 0;

  double getSaldoAtual() {
    return _saldoAtual;
  }

  void setSaldoAtual(double value) {
    _saldoAtual = value;
  }

  double getValorRetirada(){
    return _valorRetirada;
  }

  void setValorRetirada(double value) {
    _valorRetirada = value;
  }

  double getValorDeposito()  {

 return _valorDeposito;
}

 void setValorDeposito(double value) {
    _valorDeposito = value;
  }
}
