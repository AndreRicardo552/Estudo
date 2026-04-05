# Prova 1 - Flutter App

Projeto avaliativo de Flutter com Splash, Login, Cadastro e Home, usando dados mockados em memoria e arquitetura em camadas.

## Requisito importante de execucao (Windows)

Para evitar falhas do Android/Gradle no Windows, execute o projeto em uma pasta sem acentos e sem caracteres especiais no caminho.

Exemplo recomendado:

- `C:/projetos/prova_1`

Exemplo a evitar:

- pastas com `°`, `ç`, `ã` ou outros caracteres nao ASCII.

## Arquitetura adotada

O projeto foi organizado para separar interface e regra de negocio:

- Models: `lib/app/models/`
	- `usuario_model.dart` representa os dados do usuario (nome, email e senha).
- Data (mock store): `lib/app/data/`
	- `usuario_mock_store.dart` mantem uma `List<UsuarioModel>` em memoria durante a execucao.
- ViewModels: `lib/app/viewmodels/`
	- `login_viewmodel.dart`, `signup_viewmodel.dart` e `splash_viewmodel.dart` concentram validacoes e fluxo.
- Views: `lib/app/views/`
	- `splash_page.dart`, `login_page.dart`, `signup_page.dart`, `home_page.dart`.

## Fluxo implementado

1. App abre em Splash.
2. Splash espera 2 segundos e navega para Login.
3. No Login, usuario pode:
	 - autenticar com email/senha validos;
	 - ir para Cadastro.
4. No Cadastro, usuario preenche formulario e salva em memoria.
5. Ao cadastrar, retorna para Login.
6. Login correto abre Home com icone e texto centralizados.

## Rotas

- `/splash`
- `/login`
- `/signup`
- `/home`

## Roteiro de implantacao (continuidade)

1. Validar o fluxo manual completo:
	 - splash -> login -> cadastro -> login -> home.
2. Testar cenarios de erro:
	 - email invalido;
	 - senha vazia;
	 - cadastro com email repetido;
	 - login com credenciais invalidas.
3. Ajustar texto/cores basicas para apresentacao.
4. Revisar nomes dos integrantes no README.
5. Gravar video curto do fluxo para ensaio da apresentacao.

## Comandos uteis

- `flutter pub get`
- `flutter analyze`
- `flutter test`
- `flutter run`

## Equipe

- Adicionar nomes dos integrantes aqui.

