import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'descricao_event.dart';
part 'descricao_state.dart';

class DescricaoBloc extends Bloc<DescricaoEvent, DescricaoState> {
  DescricaoBloc() : super(DescricaoInitial()) {
    on<DescricaoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
