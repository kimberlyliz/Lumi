part of 'descricao_bloc.dart';

abstract class DescricaoState extends Equatable {
  const DescricaoState();
  
  @override
  List<Object> get props => [];
}

class DescricaoInitial extends DescricaoState {}
