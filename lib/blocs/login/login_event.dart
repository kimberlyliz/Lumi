/*
LOGIN PAGE
1) Inserir usuário/email
2) Inserir senha
3) Botão entrar
4) Caixa 'Esqueceu sua senha'
5) Caixa 'Criar conta'

SIGN UP PAGE (criar conta)
6) Inserir email 
7) Botão 'avançar'
8) Caixa 'entrar'

CÓDIGO DE CONFIRMAÇÃO PAGE
9) Inserir código para login
10) Botão 'avançar'

CADASTRO USUÁRIO
11) Inserir usuário
12) Inserir senha
13) Botão 'cadastre-se'
*/




import 'package:equatable/equetable.dart';






//LoginPage:
class EmptyUser_email extends Equatable{
  @override
}
class Emptysenha extends Equatable{
  @override
}
class ButtonEntrarPress extends Equatable{
@override
}
class ButtonForgotSenhaPress extends Equatable{
@override
}
class ButtonCriarConta extends Equatable{
@override
}

//Sing up page:
class EmptyEmail extends Equatable{
@override
}
class ButtonAvançar extends Equatable{
  @override
}
class Entrar extends Equatable{
  @override 
}

//CodeConfirmaçãopagee:


class CodeLogin extends Equatable{
  @override
}


class ButtonAvançar extends Equatable{
  @override
}

//CadastroUsuarioPagee:


class Emptyuser extends Equatable{
  @override
}
// ja criado essa class antes logo n criarei dnv, tentarei ver depois se outras classes podem ser removidas para melhorar o codigo class Emptysenha extends Equatable{
 // @override
//}


class ButtonCadastrese extends Equatable{
  @override
}






part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}
