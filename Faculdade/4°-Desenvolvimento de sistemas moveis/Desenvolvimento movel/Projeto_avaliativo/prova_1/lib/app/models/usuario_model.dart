class UsuarioModel {
  final String nome;
  final String email;
  final String senha;

  const UsuarioModel({
    required this.nome,
    required this.email,
    required this.senha,
  });

  bool validarSenha(String senhaDigitada) {
    return senha == senhaDigitada;
  }
}
