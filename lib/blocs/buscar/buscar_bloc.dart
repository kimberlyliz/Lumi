/* Toda a lógica de negócios fica dentro do arquivo BLoC. 
Ele simplesmente aceita eventos, executa a lógica e fornece os estados. */

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumi_code/blocs/buscar/buscar_event.dart';
import 'package:lumi_code/blocs/buscar/buscar_state.dart';

class BuscarBloc extends Bloc<BuscarEvent, BuscarState> {
  BuscarBloc(BuscarState initialState) : super(BuscarLoadingState());
  @override
  Stream<BuscarState> mapEventToState(BuscarEvent event) async* {
    throw UnimplementedError();
  }
  
}