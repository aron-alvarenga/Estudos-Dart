void main() {
  Aluno aluno1 = Aluno('Fulano');

  int c = OperacoesMatematicas.soma(3, 2);

  print('Soma: $c');
  print('Aluno: ${aluno1.nome} ');
}

class Aluno {
  String nome;

  Aluno(this.nome);
}

class OperacoesMatematicas {
  static soma(a, b) {
    return a + b;
  }
}
