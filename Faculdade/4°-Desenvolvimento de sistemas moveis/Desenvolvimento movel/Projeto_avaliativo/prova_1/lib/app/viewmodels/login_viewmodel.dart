import '../data/usuario_mock_store.dart';
import '../models/usuario_model.dart';

class LoginViewModel {
  String? validarEmail(String? valor) {
    if (valor == null || valor.trim().isEmpty) {
      return 'Informe o email.';
    }

    if (!valor.contains('@')) {
      return 'Email invalido.';
    }

    return null;
  }

  String? validarSenha(String? valor) {
    if (valor == null || valor.isEmpty) {
      return 'Informe a senha.';
    }

    return null;
  }

  UsuarioModel? autenticar({
    required String email,
    required String senha,
  }) {
    return UsuarioMockStore.autenticar(email: email.trim(), senha: senha);
  }
}
