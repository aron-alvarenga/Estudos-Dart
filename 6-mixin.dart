//Mixin permite adicionar metodos numa classe em outra, sem utilizar heranca
void main() {
  Pessoa p1 = Pessoa('Fulano', 28);
  print(p1);
  p1.trabalhaCom('Desenvolvimento Web');
  p1.fazerAniversario(p1.idade);
}

//Uso do with para declarar MIXIN
class Pessoa extends Profissao with Acoes {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  String toString() {
    return "Nome: $nome\nIdade: $idade";
  }
}

//Declarando a classe como  abstract funciona da mesma forma que funciona em Java
class Profissao {
  void trabalhaCom(String trabalho) {
    print('Trabalha com $trabalho');
  }
}

class Acoes {
  fazerAniversario(int idade) {
    idade++;
    print('Parabéns pelo seu $idadeº aniversário');
  }
}
