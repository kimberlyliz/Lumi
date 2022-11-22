/*Os eventos dizem ao BLoC para fazer algo. Um evento pode ser disparado de qualquer lugar, 
como de um widget de IU.*/

/*1) Load Page 
  2) Search container - Load Searches (Mudar do State 1 para o 2)
 */

part of 'buscar_bloc.dart';

@immutable
abstract class BuscarEvent {}
