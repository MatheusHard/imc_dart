import 'package:projeto_imc/model/pessoa.dart';

int calculate() {
  return 6 * 7;
}

String calcularImc(Pessoa p){

  double imc;
  var resultado;

  imc = p.peso / (p.altura * p.altura);

  if (imc < 16) {
    resultado = 'Magreza grave';
  } else if (imc < 17) {
    resultado = 'Magreza moderada';
  } else if (imc < 18.5) {
    resultado = 'Magreza leve';
  } else if (imc < 25) {
    resultado = 'Saudável';
  } else if (imc < 30) {
    resultado = 'Sobrepeso';
  } else if (imc < 35) {
    resultado = 'Obesidade – GRAU I';
  } else if (imc < 40) {
    resultado = 'Obesidade – GRAU II | Severa';
  } else {
    resultado = 'Obesidade – GRAU III | Mórbida';
  }

return '''Sr(a) ${p.nome}, seu IMC é: ${imc.toStringAsFixed(2)}, considerado -> $resultado''';

}
