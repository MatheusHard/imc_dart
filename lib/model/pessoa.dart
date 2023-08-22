class Pessoa{

  late final String _nome;
  late final double _peso;
  late final double _altura;

  Pessoa(this._nome, this._altura, this._peso);

  String get nome => _nome;
  double get altura => _altura;
  double get peso => _peso;

  set peso(double value) {
    _peso = value;
  }
  set nome(String value) {
    _nome = value;
  }
  set altura(double value) {
    _altura = value;
  }
}