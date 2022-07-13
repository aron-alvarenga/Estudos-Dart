void main() {
  Pessoa p1 = Pessoa('Fulano');
  p1.trabalhaCom('Desenvolvimento Web');
}

class Pessoa extends Profissao {
  String nome;

  Pessoa(this.nome);

  String toString() {
    return "Nome $nome";
  }
}

//Declarando a classe como  abstract funciona da mesma forma que funciona em Java
class Profissao {
  void trabalhaCom(String trabalho) {
    print('Trabalha com $trabalho');
  }
}
