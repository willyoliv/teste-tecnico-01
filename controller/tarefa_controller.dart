import 'dart:io';

class TarefaController {
  int obterNumero() {
    print("Digite um número inteiro positivo!");
    String? input = stdin.readLineSync();
    if (input != null) {
      try {
        int numero = int.parse(input);
        if (_validarNumeroRecebido(numero)) {
          return numero;
        } else {
          print(
              "O número informado não corresponde a um número inteiro positivo. Tente novamente!");
          return obterNumero();
        }
      } catch (exception) {
        print(
            "O caracter informado não corresponde a um número inteiro. Tente novamente!");
        return obterNumero();
      }
    } else {
      print("Por favor informe um valor não nulo!");
      return obterNumero();
    }
  }

  bool _validarNumeroRecebido(int numero) {
    bool isNumeroValido = false;
    if (numero >= 0) {
      isNumeroValido = true;
    }
    return isNumeroValido;
  }

  int calcularSomatorio(int numero) {
    int somatorio = 0;
    List<int> valoresSomados = [];
    if (numero > 3) {
      for (int i = numero - 1; i > 2; i--) {
        if (i % 3 == 0 || i % 5 == 0) {
          somatorio += i;
          valoresSomados.add(i);
        }
      }
    }

    return somatorio;
  }

  void imprimirResultado(int numero, int somatorio) {
    print("Resultado obtido...");
    print("Número informado: $numero");
    print("Somatório: $somatorio");
  }
}
