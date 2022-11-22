/*
PRIMEIRA PÁGINA
1) Pesquisa de mensagens 
2) Icones online
3) Mensagem recebida
4) Clicar no ícone de mensagem
5) Clicar na mensagem de um usuário

SEGUNDA PÁGINA (mensagem individual)
1) Ícone chamada 
2) Ícone emoji
3) Ícone 'plus'
4) Envia a mensagem inserida no textfield
*/

part of 'chat_bloc.dart';

abstract class ChatEvent extends Equatable {
  const ChatEvent();

  @override
  List<Object> get props => [];
}
