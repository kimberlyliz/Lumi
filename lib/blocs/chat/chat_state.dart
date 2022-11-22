/*
PRIMEIRA PÁGINA 
1) apresentação da pesquisa
2) ícone verde - representando a pessoa online
3) ícone com o número de mensagens recebidas por usuário
4) transferência para a Segunda Página (Pág de mensagens individuais)
5) transferência para a Segunda Página (Pág de mensagens individuais)

SEGUNDA PÁGINA (mensagem individual)
1) Redireciona para uma chamada/videochamada
2) Apresenta o leque de emojis
3) Apresenta a galeria de fotos
4) Ícone 'enviar'
*/

part of 'chat_bloc.dart';

abstract class ChatState extends Equatable {
  const ChatState();
  
  @override
  List<Object> get props => [];
}

class ChatInitial extends ChatState {}
