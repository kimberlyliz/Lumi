/*Os eventos dizem ao BLoC para fazer algo. Um evento pode ser disparado de qualquer lugar, 
como de um widget de IU.*/

/*1) Carregar a lista  
  2) Search container - Load Searches (Mudar do State 1 para o 2)
 */

import 'package:equatable/equatable.dart';

class BuscarEvent extends Equatable{
  @override
  List<Object> get props => [];
}

class BuscarFechtList extends BuscarEvent {}

class BuscarFechtWithEmptyList extends BuscarEvent {}


