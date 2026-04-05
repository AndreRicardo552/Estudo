import 'package:flutter/material.dart';

import '../viewmodels/signup_viewmodel.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _confirmacaoSenhaController =
      TextEditingController();
  final SignupViewModel _viewModel = SignupViewModel();

  @override
  void dispose() {
    _nomeController.dispose();
    _emailController.dispose();
    _senhaController.dispose();
    _confirmacaoSenhaController.dispose();
    super.dispose();
  }

  String? _validarConfirmacaoSenha(String? valor) {
    final String senha = _senhaController.text;

    if (valor == null || valor.isEmpty) {
      return 'Confirme a senha.';
    }

    if (valor != senha) {
      return 'As senhas nao coincidem.';
    }

    return null;
  }

  void _salvarCadastro() {
    final bool formularioValido = _formKey.currentState?.validate() ?? false;

    if (!formularioValido) {
      return;
    }

    final bool cadastroCriado = _viewModel.cadastrar(
      nome: _nomeController.text,
      email: _emailController.text,
      senha: _senhaController.text,
    );

    if (!cadastroCriado) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Ja existe usuario com esse email.')),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Cadastro realizado com sucesso!')),
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                controller: _nomeController,
                decoration: const InputDecoration(
                  labelText: 'Nome',
                  border: OutlineInputBorder(),
                ),
                validator: _viewModel.validarNome,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: _viewModel.validarEmail,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _senhaController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
                validator: _viewModel.validarSenha,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _confirmacaoSenhaController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Confirmacao de senha',
                  border: OutlineInputBorder(),
                ),
                validator: _validarConfirmacaoSenha,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _salvarCadastro,
                child: const Text('Salvar cadastro'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
