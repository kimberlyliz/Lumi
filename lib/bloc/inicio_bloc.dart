import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'inicio_event.dart';
part 'inicio_state.dart';

class InicioBloc extends Bloc<InicioEvent, InicioState> {
  InicioBloc() : super(InicioInitial()) {
    on<InicioEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
