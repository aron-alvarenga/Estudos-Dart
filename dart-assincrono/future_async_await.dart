void main() async {
  print('Inicio');
  bool sucesso = await auxiliar();
  print('Fim $sucesso');
}

Future<bool> auxiliar() async {
  String usuario = await reqUsuario();
  print('Encontrou usuário. Nome: $usuario');
  try {
    bool sucesso = await autenticar(usuario);
    return sucesso;
  } catch (e) {
    print(e);
    return false;
  }
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
