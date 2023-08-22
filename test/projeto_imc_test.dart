import 'package:projeto_imc/projeto_imc.dart';
import 'package:projeto_imc/model/pessoa.dart';

import 'package:test/test.dart';

void main() {
  ///Comando:  dart test test/projeto_imc_test.dart
  test('calculate', () {
    expect(calculate(), 42);

  });
  ///Cair no erro , retorno diferente:
  test('calcular_imc', () {
    Pessoa p = Pessoa("", 0, 100);
    expect(calcularImc(p), "");
  });
}
