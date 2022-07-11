void main() {
  print('Início');
  reqUsuario().then((usuario) {
    print('Encontrou usuário. Nome: $usuario');
    autenticar(usuario).then((autenticado) {
      print(autenticado);
    }).catchError((e) {
      print(e);
    });
    print('>>FIM DA REQ<<');
  });
  print('Fim');
}

Future<String> reqUsuario() async {
  await Future.delayed(Duration(seconds: 2));
  print('1 usuário encontrado');
  return 'Fulano de Tal';
}

Future<bool> autenticar(String usuario) async {
  await Future.delayed(Duration(seconds: 2));
  if (usuario == 'Fulano de Tal') return true;
  throw UsuarioInvalido;
}

class UsuarioInvalido implements Exception {}
