import '../data/usuario_mock_store.dart';
import '../models/usuario_model.dart';

class SignupViewModel {
  String? validarNome(String? valor) {
    if (valor == null || valor.trim().isEmpty) {
      return 'Informe o nome.';
    }

    if (valor.trim().length < 3) {
      return 'Nome deve ter ao menos 3 caracteres.';
    }

    return null;
  }

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

    if (valor.length < 6) {
      return 'Senha deve ter ao menos 6 caracteres.';
    }

    return null;
  }

  bool cadastrar({
    required String nome,
    required String email,
    required String senha,
  }) {
    final UsuarioModel novoUsuario = UsuarioModel(
      nome: nome.trim(),
      email: email.trim(),
      senha: senha,
    );

    return UsuarioMockStore.adicionarUsuario(novoUsuario);
  }
}
