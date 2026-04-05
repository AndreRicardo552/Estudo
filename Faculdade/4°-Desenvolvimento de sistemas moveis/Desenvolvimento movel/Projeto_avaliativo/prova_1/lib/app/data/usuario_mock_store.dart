import '../models/usuario_model.dart';

class UsuarioMockStore {
  UsuarioMockStore._();

  static final List<UsuarioModel> _usuarios = <UsuarioModel>[
    const UsuarioModel(
      nome: 'Aluno Demo',
      email: 'aluno@demo.com',
      senha: '123456',
    ),
  ];

  static List<UsuarioModel> get usuarios {
    return List<UsuarioModel>.unmodifiable(_usuarios);
  }

  static bool adicionarUsuario(UsuarioModel novoUsuario) {
    final bool usuarioExiste = _usuarios.any(
      (UsuarioModel usuario) =>
          usuario.email.toLowerCase() == novoUsuario.email.toLowerCase(),
    );

    if (usuarioExiste) {
      return false;
    }

    _usuarios.add(novoUsuario);
    return true;
  }

  static UsuarioModel? autenticar({
    required String email,
    required String senha,
  }) {
    for (final UsuarioModel usuario in _usuarios) {
      final bool emailCorreto =
          usuario.email.toLowerCase() == email.toLowerCase();
      final bool senhaCorreta = usuario.validarSenha(senha);

      if (emailCorreto && senhaCorreta) {
        return usuario;
      }
    }

    return null;
  }
}
