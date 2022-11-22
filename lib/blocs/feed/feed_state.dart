/*
1) Ação curtir - like vermelho e incremetação de uma unidade no número de curtidas
2) Acrescentar a caixa de cometário e incremetar unidade no número de comentários
3) Compartilhar publicação por meio da tela de chat (transferencia de dados)
4) Acrescentar a caixa de cometário e incremetar unidade no número de comentários
5) Transferir para a página de busca de todos os usuários do app
6) Transferir para a tela de criar uma publicação */

part of 'feed_bloc.dart';

@immutable
abstract class FeedState {}

class FeedInitial extends FeedState {}
