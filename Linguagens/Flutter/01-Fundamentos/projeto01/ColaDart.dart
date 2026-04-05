/// =========================================================================
///                        COLA DART (CHEAT SHEET)
/// =========================================================================
/// Este arquivo é um guia completo sobre a linguagem Dart.
/// Ele abrange desde conceitos básicos, variáveis, funções,
/// até programação orientada a objetos (POO), null safety e assincronismo.
/// =========================================================================

// ignore_for_file: unused_local_variable, unused_element, dead_code, unused_field

import 'dart:convert'; // Necessário para a manipulação de JSON (jsonDecode, jsonEncode)

/// -------------------------------------------------------------------------
/// 1. VARIÁVEIS E TIPOS BÁSICOS
/// -------------------------------------------------------------------------
void variaveis() {
  // Dart é fortemente tipada, mas possui inferência de tipo.
  int idade = 25; // Inteiros
  double altura = 1.75; // Pontos flutuantes
  bool gostaDeProgramar = true; // Booleanos
  String nome = 'João'; // Strings

  // Declaração por inferência (o tipo é definido na inicialização)
  var sobrenome = 'Silva';
  // sobrenome = 123; // Isso daria erro, pois 'var' define 'String' neste caso.

  // Dynamic: Pode mudar de tipo em tempo de execução
  dynamic variavelDinamica = 'Texto';
  variavelDinamica = 123; // Válido
  variavelDinamica = true; // Válido

  // Constantes e Final
  // 'final': o valor deve ser único ao longo do tempo de execução do código,
  // ou seja, assinado apenas uma vez (avaliação em tempo de execução)
  final double piValue = 3.1415;

  // 'const': constante em tempo de compilação
  const double gravidade = 9.81;

  // Interpolação de Strings
  String apresentacao =
      'Olá, meu nome é $nome $sobrenome. Minha idade é ${idade + 5}.';
}

/// -------------------------------------------------------------------------
/// 2. NULL SAFETY (Segurança Nula)
/// -------------------------------------------------------------------------
void nullSafety() {
  // Por padrão, variáveis não podem ser nulas.
  // int numeroNull; // Erro de compilação

  // Para permitir null, usamos o caractere '?'
  int? numeroNulo; // Agora é válido
  numeroNulo = 10;
  numeroNulo = null;

  // Operador '??' (Se for nulo, atribui outro valor)
  int valorPadrao = numeroNulo ?? 0; // Se 'numeroNulo' for null, retorna 0.

  // Operador '??=' (Atribui apenas se for nulo)
  numeroNulo ??= 5;

  // Operador '!' (Garante (força) que a variável não é nula)
  // Use com cuidado, pois pode gerar exceções se o valor for realmente nulo.
  // int calculo = numeroNulo! * 2;

  // Operador '?.' (Acesso seguro a propriedades e métodos)
  String? textoNulo;
  int? tamanho =
      textoNulo?.length; // Retorna null, pois 'textoNulo' é null, não dá crash.
}

/// -------------------------------------------------------------------------
/// 3. COLEÇÕES (List, Set, Map)
/// -------------------------------------------------------------------------
void colecoes() {
  // Listas (Arrays ordenados)
  List<String> frutas = ['Maçã', 'Banana', 'Laranja'];
  frutas.add('Uva');
  frutas.removeAt(0); // Remove Maçã
  var tamanhoFrutas = frutas.length;

  // Sets (Conjuntos não ordenados de itens únicos)
  Set<int> numerosUnicos = {1, 2, 3, 3, 4}; // O '3' repetido é ignorado.

  // Maps (Dicionários - Chave/Valor)
  Map<String, double> notas = {
    'Matemática': 9.5,
    'História': 8.0,
    'Ciências': 9.2,
  };
  notas['Geografia'] = 7.5; // Adiciona nova chave.

  // Interação em Coleções
  // For in
  for (var fruta in frutas) {
    print(fruta);
  }

  // Percorrendo Map
  for (var entry in notas.entries) {
    print('${entry.key}: ${entry.value}');
  }
}

/// -------------------------------------------------------------------------
/// 4. FUNÇÕES
/// -------------------------------------------------------------------------
// Função básica
int soma(int a, int b) {
  return a + b;
}

// Arrow function (Função em uma única linha)
int multiplicacao(int a, int b) => a * b;

// Parâmetros opcionais posicionais '[ ]'
String saudar(String nome, [String sobrenome = '']) {
  return 'Olá $nome $sobrenome';
}

// Parâmetros nomeados '{ }' (melhor legibilidade)
// Uso do 'required' se o parâmetro nomeado for obrigatório
void criarUsuario({required String nome, int idade = 18}) {
  print('Criando $nome com idade $idade');
}

// Passando função como parâmetro (First-class functions)
void calcular(int a, int b, Function(int, int) operacao) {
  print(operacao(a, b));
}

/// -------------------------------------------------------------------------
/// 5. CONTROLE DE FLUXO (IF, FOR, WHILE, SWITCH)
/// -------------------------------------------------------------------------
void fluxos() {
  int idade = 20;

  // If / Else
  if (idade >= 18) {
    print('Maior');
  } else if (idade >= 12) {
    print('Adolescente');
  } else {
    print('Criança');
  }

  // Operador Ternário
  String status = (idade >= 18) ? 'Aprovado' : 'Reprovado';

  // Switch Case
  String siglaEstado = 'SP';
  switch (siglaEstado) {
    case 'SP':
      print('São Paulo');
      break;
    case 'RJ':
      print('Rio de Janeiro');
      break;
    default:
      print('Outro Estado');
  }

  // Repetições (Loops)
  for (int i = 0; i < 5; i++) {
    print(i);
  }

  int contador = 0;
  while (contador < 3) {
    print(contador);
    contador++;
  }

  do {
    print('Executa ao menos 1 vez');
  } while (false);
}

/// -------------------------------------------------------------------------
/// 6. PROGRAMAÇÃO ORIENTADA A OBJETOS (POO)
/// -------------------------------------------------------------------------

// 6.1: Classes, Atributos e Construtores
class Pessoa {
  String nome; // Atributo
  int idade;

  // Atributo privado em Dart começa com '_'
  // O encapsulamento se dá a nível de biblioteca (arquivo).
  double _saldoBancario = 0;

  // Construtor completo e conciso
  Pessoa(this.nome, this.idade);

  // Construtor Nomeado (Permite ter mais de um construtor)
  Pessoa.recemNascido(this.nome) : idade = 0;

  // Métodos
  void fazerAniversario() {
    idade++;
  }

  // Getters e Setters para encapsular os campos privados
  double get saldo => _saldoBancario;

  set depositar(double valor) {
    if (valor > 0) _saldoBancario += valor;
  }
}

// 6.2: Herança e Modificador 'super'
class Funcionario extends Pessoa {
  double salario;

  // Passando parâmetros para o construtor da classe base com ': super()'
  Funcionario(String nome, int idade, this.salario) : super(nome, idade);

  // Sobrescrita de Método (Polimorfismo)
  @override
  void fazerAniversario() {
    super.fazerAniversario(); // Chama a implementação da classe pai
    salario += 100; // E adiciona comportamento
  }
}

// 6.3: Classes Abstratas (Não podem ser instanciadas diretamente)
abstract class Animal {
  void emitirSom(); // Método sem corpo, deve ser implementado pelas filhas
}

class Cachorro extends Animal {
  @override
  void emitirSom() => print('Au Au!');
}

// 6.4: Interfaces (Em Dart, toda classe pode ser uma interface através de 'implements')
class Autenticavel {
  bool login(String username, String senha) => false;
}

// Ao dar implements, DEVEMOS reescrever TUDO que havia na classe
class Gerente implements Autenticavel {
  @override
  bool login(String username, String senha) {
    return username == 'admin' && senha == '123';
  }
}

// 6.5: Mixins (Herança Múltipla / Reutilização de código sem herança hierárquica completa)
mixin Nadador {
  void nadar() => print('Nadando...');
}

mixin Corredor {
  void correr() => print('Correndo...');
}

class AtletaTriatlo extends Pessoa with Nadador, Corredor {
  AtletaTriatlo(super.nome, super.idade);
  // O atleta age como Pessoa e também possui as funções das Mixins Nadador e Corredor.
}

/// -------------------------------------------------------------------------
/// 7. ASSINCRONISMO (Future, Async, Await, Streams)
/// -------------------------------------------------------------------------

// Future representa algo que terminará no futuro (promisse)
Future<String> buscarDados() async {
  // Simula um atraso na rede
  await Future.delayed(Duration(seconds: 2));
  return 'Dados carregados com sucesso';
}

void demonstrarAssincronismo() async {
  print('1. Solicitando dados...');
  // O 'await' pausa a execução da função atual até que a Future seja concluída
  String resultado = await buscarDados();
  print('2. $resultado');

  // Tratamento de erros assíncronos
  try {
    var teste = await Future.error('Falha de conexão');
  } catch (e) {
    print('Erro capturado: $e');
  }
}

// Stream: Sequência assíncrona de dados (como um rio, onde valores chegam ao longo do tempo)
Stream<int> contarAte(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1)); // atrasa 1 seg
    yield i; // Entrega o valor e continua vivo (diferente do return)
  }
}

void consumirStream() async {
  await for (int numero in contarAte(3)) {
    print('Recebido do Stream: $numero');
  }
}

/// -------------------------------------------------------------------------
/// 8. TRATAMENTO DE ERROS E EXCEÇÕES
/// -------------------------------------------------------------------------
void errosExcecoes() {
  try {
    int resultado =
        10 ~/ 0; // Divisão por zero (lança IntegerDivisionByZeroException)
  } on UnsupportedError catch (e) {
    // Captura um tipo de erro específico
    print('Operação não suportada: $e');
  } catch (e, stackTrace) {
    // Captura qualquer erro. O segundo param (opcional) exibe o rastro do erro
    print('Ocorreu um erro: $e');
  } finally {
    print(
      'Este bloco SEMPRE será executado, independentemente de haver erro ou não.',
    );
  }
}

/// -------------------------------------------------------------------------
/// 9. CONSUMO DE APIs E MANIPULAÇÃO DE JSON
/// -------------------------------------------------------------------------

// No Dart/Flutter, a manipulação de JSON e o envio/recebimento de dados
// costumam caminhar juntos frequentemente em chamadas REST.

void manipulacaoJson() {
  // Recebendo String JSON simuladora da API:
  String respostaApi = '{"nome": "Maria", "idade": 28, "ativo": true}';

  // DESSERIALIZAÇÃO (jsonDecode): Transforma JSON do tipo String em Tipos do Dart (Map).
  Map<String, dynamic> usuario = jsonDecode(respostaApi);
  print('Nome extraído do JSON: ${usuario['nome']}'); // Output: Maria

  // SERIALIZAÇÃO (jsonEncode): Transforma Tipos do Dart para texto JSON (Para envio no body).
  Map<String, dynamic> postDados = {'id': 10, 'status': 'aprovado'};
  String jsonEnvio = jsonEncode(postDados);
  print('Texto JSON para envio usando Body: $jsonEnvio');
}

// =========================================================================
// Exemplo prático de requisição HTTP (REST).
// Normalmente instalamos uma biblioteca externa como 'http' ou 'dio'.
// Para o 'http', adicionar no pubspec.yaml -> dependencies: http: ^1.1.0
// E no topo do arquivo -> import 'package:http/http.dart' as http;
// =========================================================================

/*
Future<void> buscarUsuarioNaApi() async {
  // Uri.parse traduz a String da URL para um objeto acessível 'Uri':
  var url = Uri.parse('https://jsonplaceholder.typicode.com/users/1');
  
  try {
    // Iniciando método GET assíncrono (aguardando a resposta da rede)
    var response = await http.get(url);
    
    // Validando o código de status HTTP (200 = Sucesso / OK)
    if (response.statusCode == 200) {
      
      // Decodifica usando o body da resposta, ou seja, o conteúdo real 
      var dados = jsonDecode(response.body); 
      
      print('Nome retornado pela API: ${dados['name']}');
    } else {
      print('A requisição falhou, Código HTTP de Erro: ${response.statusCode}');
    }
  } catch (e) {
    // Erros capturados podem não ser da API (Ex: sem conexão com a internet)
    print('Erro na comunicação com a API: $e');
  }
}
*/

/// =========================================================================
/// MAIN - Onde a execução de todo programa Dart começa
/// =========================================================================
void main() {
  // Chamada de demonstrações (remova os comentários para testar, caso execute um dia)

  // variaveis();
  // nullSafety();
  // colecoes();

  // print(soma(5, 5));
  // criarUsuario(nome: 'Anderson');

  // fluxos();

  // POO Exemplo
  // var jorge = Pessoa('Jorge', 30);
  // jorge.fazerAniversario();
  // print(jorge.idade); // 31

  // Assincronismo
  // demonstrarAssincronismo();
}
