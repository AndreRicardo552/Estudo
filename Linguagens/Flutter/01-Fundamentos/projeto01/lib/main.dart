import 'package:flutter/material.dart';

main() {
  runApp(new Home());
}

class Home extends StatelessWidget {

  void responder(){
    print('Pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual a sua cor favorita?',
      'Qual seu animal favorito?'
    ]

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 1'),
             ),
             ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 2'),
             ),
             ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 3'),
             )
            
          ],
        ),
      )
    );
  }
}
