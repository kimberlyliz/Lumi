/*1) Load Page (Mudar do State 1 para o 2)

2) Add (Adicionar o filme/série para a lista individual) 

3) Rate (Avaliar o filme/série com estrelas entre 0 e 5)

4) Share (Compartilhar o filme/série com outros usuários)

5) Redirect (Direciona o usuário para algum site, como Netflix ou Globoplay, para que ele possa ver o filme)

6) Play ( Da play no trailer dentro do próprio app)

7) Comment ( Direcionar o usuário para a barra de comentários)
 */


part of 'descricao_bloc.dart';

abstract class DescricaoEvent extends Equatable {
  const DescricaoEvent();

  @override
  List<Object> get props => [];
}
