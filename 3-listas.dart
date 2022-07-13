void main() {
  Pessoa p1 = Pessoa('Fulano');
  Pessoa p2 = Pessoa('Beltrano');
  Pessoa p3 = Pessoa('Ciclano');

  List pessoas = [p1, p2, p3];
  // pessoas.add(p1);
  // pessoas.add(p2);
  // pessoas.add(p3);

  // print('Pessoas: $pessoas'); //Necessário sobrescrever o toString
  print('Pessoas: $pessoas Tamanho do Array: ${pessoas.length}');

  for (Pessoa pes in pessoas) {
    print('- ${pes.nome}');
  }
}

class Pessoa {
  String nome;

  Pessoa(this.nome);

  String toString() {
    return "Nome $nome";
  }
}
