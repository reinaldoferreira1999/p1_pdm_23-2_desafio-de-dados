import 'dart:io';
import 'dart:core';
import 'dart:math';

void main() {
  print("Desafio dos Dados");
  print("Qual seu nome?");
  String? input = stdin.readLineSync();
  print("Usuario: $input VS Computador\n");

  int pontosUsuario = 0;
  int pontosComputador = 0;

  Random random = Random();
  int dado1us = 1;
  int dado2us = 1;
  int dado3us = 1;

  print("Agora é a sua vez $input");
  dado1us = Random().nextInt(6) + 1;
  print("Dado 1: $dado1us");
  dado2us = Random().nextInt(6) + 1;
  print("Dado 2: $dado2us");
  dado3us = Random().nextInt(6) + 1;
  print("Dado 3: $dado3us");
  int soma = dado1us + dado2us + dado3us;
  print("A soma dos dados é: $soma\n");

  int dado1pc = 1;
  int dado2pc = 1;
  int dado3pc = 1;

  print("Agora é a vez do computador");
  dado1pc = Random().nextInt(6) + 1;
  print("Dado 1: $dado1pc");
  dado2pc = Random().nextInt(6) + 1;
  print("Dado 2: $dado2pc");
  dado3pc = Random().nextInt(6) + 1;
  print("Dado 3: $dado3pc");
  int soma_pc = dado1pc + dado2pc + dado3pc;
  print("A soma dos dados é: $soma_pc\n");

  if (soma > soma_pc) {
    print("$input venceu!\n");
    pontosUsuario++;
  } else if (soma == soma_pc) {
    print("Foi empate!\n");
  } else {
    print("Computador venceu!\n");
    pontosComputador++;
  }

  print("$input: $pontosUsuario");
  print("Computador: $pontosComputador");
}