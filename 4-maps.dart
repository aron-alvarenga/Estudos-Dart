void main() {
  Pessoa p1 = Pessoa('Fulano');
  Pessoa p2 = Pessoa('Beltrano');
  Pessoa p3 = Pessoa('Ciclano');

  // final pessoas = Map<String, Pessoa>();
  // pessoas['1'] = p1;
  // pessoas['2'] = p2;
  // pessoas['3'] = p3;

  // final pessoas = {};
  // pessoas['1'] = p1;
  // pessoas['2'] = p2;
  // pessoas['3'] = p3;

  final pessoas = {'1': p1, '2': p2};
  pessoas['3'] = p3;

  print('Pessoas: $pessoas Tamanho do Array: ${pessoas.length}');

  // for (Pessoa pes in pessoas.values) {
  //   print('- ${pes.nome}');
  // }

  for (String id in pessoas.keys) {
    final p = pessoas[id];
    print('-- Nome: ${p?.nome} --');
  }
}

class Pessoa {
  String nome;

  Pessoa(this.nome);

  String toString() {
    return "Nome $nome";
  }
}
