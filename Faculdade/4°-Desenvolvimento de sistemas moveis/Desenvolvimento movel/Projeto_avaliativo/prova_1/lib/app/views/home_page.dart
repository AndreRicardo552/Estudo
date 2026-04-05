import 'package:flutter/material.dart';

import '../models/usuario_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Object? argumentos = ModalRoute.of(context)?.settings.arguments;
    final String nomeUsuario = argumentos is UsuarioModel
        ? argumentos.nome
        : 'Usuario';

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Icon(Icons.home, size: 80, color: Colors.blueAccent),
            const SizedBox(height: 12),
            Text(
              'Bem-vindo a Home, $nomeUsuario!',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}
