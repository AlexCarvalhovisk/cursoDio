class Pessoa {
  
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  // Getters e setters do nome
  set nome(String nome) => _nome = nome;
  String get nome => _nome;

  // Set do peso
  set peso(double peso) {
    if (peso <= 0) {
      throw Exception('O peso deve ser maior que zero');
    }
    _peso = peso;
  }

  // Get do peso
  double get peso => _peso;

  // Set da altura
  set altura(double altura) {
    if (altura <= 0) {
      throw Exception('A altura não pode ser menor que zero.');
    }
    _altura = altura;
  }

  // Get da altura
  double get altura => _altura;

  // Construtor
  Pessoa(this._nome, this._peso, this._altura);

  // Cálculo para massa corporal
  double calculaMassaCorporal() {
    return _peso / (_altura * _altura);
  }

  // Lógica do IMC para encontrar o índice
  String retornaIMC() {
    double imc = calculaMassaCorporal();
    String massa;

    if (imc < 16) {
      massa = 'Magreza severa';
    } else if (imc >= 16 && imc < 17) {
      massa = 'Magreza moderada';
    } else if (imc >= 17 && imc < 18.5) {
      massa = 'Magreza leve';
    } else if (imc >= 18.5 && imc < 25) {
      massa = 'Saudável';
    } else if (imc >= 25 && imc < 30) {
      massa = 'Sobrepeso';
    } else if (imc >= 30 && imc < 35) {
      massa = 'Obesidade grau I';
    } else if (imc >= 35 && imc < 40) {
      massa = 'Obesidade grau II';
    } else {
      massa = 'Obesidade grau III';
    }

    return 'IMC: ${imc.toStringAsFixed(1)}, Categoria: $massa';
  }
}

