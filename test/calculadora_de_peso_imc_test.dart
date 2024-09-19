import 'package:calculadora_de_peso_imc/Entity/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Teste de validação de peso.', () {
    Pessoa pessoa = Pessoa('Alex', 91, 1.71);
    expect(() => pessoa.peso = -5.0, throwsException);
    expect(() => pessoa.peso = 0.0, throwsException);
    expect(() => pessoa.peso = 75.0, returnsNormally);
  });

  test('Teste de validação de altura.', () {
    Pessoa pessoa = Pessoa('Alex', 91, 1.71);
    expect(() => pessoa.altura = -1.0, throwsException);
    expect(() => pessoa.altura = 0.0, throwsException);
    expect(() => pessoa.altura = 1.71, returnsNormally);
  });
}
