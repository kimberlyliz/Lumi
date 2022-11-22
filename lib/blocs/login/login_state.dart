/*LOGIN PAGE
1) Verificar se dado é existente
2) Verificar se senha condiz com a informação fornecida na criação do usuário
3) Transferência para a página inicial, caso os dados fornecidos estiverem coerentes
4) Abertura de pop-up para processo de modificação de senha
5) Transferência para a página de criação de conta

SIGN UP PAGE (criar conta)
6) Verificação se o email inserido já foi utilizado 
7) Transferência para a página de confirmação de email
8) Transferência para a página de login

CÓDIGO DE CONFIRMAÇÃO PAGE
9) Verificação se o código inserido é condizente com o código enviado ao usuário
10) Tranferência para a página de cadastro de usuário e da senha

CADASTRO USUÁRIO
11) Verificação se a informação fornecida já é existente
12) Verificação se condiz com as especificações de senha
13) Cadastro de dados e transferência para a página inicial


*/

part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
