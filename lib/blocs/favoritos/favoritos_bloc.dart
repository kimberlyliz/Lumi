import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'favoritos_event.dart';
part 'favoritos_state.dart';

class FavoritosBloc extends Bloc<FavoritosEvent, FavoritosState> {
  FavoritosBloc() : super(FavoritosInitial()) {
    on<FavoritosEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
