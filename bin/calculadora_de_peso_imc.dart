import 'dart:io';
import 'dart:convert';
import 'package:calculadora_de_peso_imc/Entity/pessoa.dart';

void main() {
  print("Seja bem-vindo à calculadora IMC.");

  String nome;
  double peso;
  double altura;

  stdout.write("Digite o seu nome: ");
  nome = stdin.readLineSync(encoding: utf8) ?? "";

  while (true) {
    stdout.write("Digite o seu peso: (kg) ");
    String? pesoInput = stdin.readLineSync(encoding: utf8);
    try {
      peso = double.parse(pesoInput ?? '0');
      break; // Saia do loop após entrada válida
    } catch (e) {
      print("Peso inválido. Tente novamente, por favor.");
    }
  }

  while (true) {
    stdout.write("Digite a sua altura: (m) ");
    String? alturaInput = stdin.readLineSync(encoding: utf8);
    try {
      altura = double.parse(alturaInput ?? '0');
      break; // Saia do loop após entrada válida
    } catch (e) {
      print("Altura inválida. Tente novamente, por favor.");
    }
  }

  Pessoa pessoa = Pessoa(nome, peso, altura);

  print("Nome: ${pessoa.nome}");
  print("Peso: ${pessoa.peso}");
  print("Altura: ${pessoa.altura}");
  print(pessoa.retornaIMC());
}

