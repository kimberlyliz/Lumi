import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'buscar_event.dart';
part 'buscar_state.dart';

class BuscarBloc extends Bloc<BuscarEvent, BuscarState> {
  BuscarBloc() : super(BuscarInitial()) {
    on<BuscarEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
