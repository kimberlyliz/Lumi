
/*1) Página Inicial
  2) Pesquisa - mensagem 'sem resultados'
  3) Pesquisa - buscas aparecendo
 */


import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class BuscarState extends Equatable{
  @override
  List<Object> get props => [];
}

//carregando
class BuscarLoadingState extends BuscarState {}

//lista vazia - sem resultados
class BuscarEmptyState  extends BuscarState{
  final String message;

  BuscarEmptyState({required this.message});
}

//carregada
class BuscarStateLoaded extends BuscarState {
  final List<String> list;

  BuscarStateLoaded({required this.list});
}
