import 'package:flutter/material.dart';
import 'package:lumi_code/Buscar/model/movie_model.dart';

class Buscar extends StatefulWidget {
  const Buscar({super.key});

  @override
  State<Buscar> createState() => _BuscarState();
}

class _BuscarState extends State<Buscar> {
   List<MovieModel> display_list = List.from(main_movies_list);

  void updateList(String value) {
    //função que vai filtrar nossa lista, our search function

    setState(() {
      display_list = main_movies_list
          .where((element) =>
              element.movie_title!.toLowerCase().contains(value.toLowerCase()))
          .toList(); //
    });
  }

  static List<MovieModel> main_movies_list = [
    MovieModel("Breaking Bad",
        "https://files.tecnoblog.net/wp-content/uploads/2022/06/breaking-bad.jpg"),
    MovieModel("How I Met Your Mother",
        "https://prod-ripcut-delivery.disney-plus.net/v1/variant/star/BEA544D7476F6C33E23CB73494F462BAF5F9A247B41B335F74094773F4112C03/scale?width=1200&aspectRatio=1.78&format=jpeg"),
    MovieModel("A Culpa É Das Estrelas",
        "https://cinemaparasempre.com.br/wp-content/uploads/2017/11/a-culpa-%C3%A9-das-estrelas.png"),
    MovieModel(
        "Forrest Gump", "https://i.ytimg.com/vi/vDY_uZAaU7g/maxresdefault.jpg"),
    MovieModel("Como Treinar O Seu Dragão",
        "https://1.bp.blogspot.com/-ZW6SkjpEjCA/X-LVoGPeqGI/AAAAAAAA0UI/gHwNP3dgKPsYFfjx7nIKsD2mRvIJZoq5QCLcBGAsYHQ/s466/Como_Treinar_Dragao3_amazon_banner.jpg"),
    MovieModel("Sempre Ao Seu Lado",
        "https://i.ytimg.com/vi/UFY8vW5IedY/maxresdefault.jpg"),
    MovieModel("Wall-E",
        "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/C771A3165AE1677750993B593301957E541F68E1E8BEC9B7D4BABC9BD95D750F/scale?width=1200&aspectRatio=1.78&format=jpeg"),
    MovieModel("The Boys",
        "https://images-eu.ssl-images-amazon.com/images/S/pv-target-images/b4d03776f7fcbaa4b955b51bd2462eb3bab5b96ee421236cdc4636ab00a935e7._UY500_UX667_RI_V_TTW_.jpg"),
    MovieModel("Jurassic World: Domínio",
        "https://techplanet.today/storage/posts/2022/09/15/76/nJEa9leHLUVbHTdE5bBOXtzmB9qFVxJaFsQ60obE.png"),
    MovieModel("Elvis",
        "https://www.atribunarj.com.br/wp-content/uploads/2022/07/1-Lancado-porcamente-Elvis-e-um-grande-filme.jpg"),
    MovieModel("Stranger Things",
        "https://wp.ufpel.edu.br/empauta/files/2017/10/strangerthings.jpg"),
    MovieModel("Anne With An E",
        "https://idris.com.br/dev/wp-content/themes/Idris/timthumb.php?src=https://idris.com.br/dev/wp-content/uploads/2020/07/images-5.jpeg&w=821&h=400&zc=1"),
    MovieModel("Meu Malvado Favorito 3",
        "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia14206/meu-malvado-favorito3.jpg"),
    MovieModel("This Is Us",
        "https://prod-ripcut-delivery.disney-plus.net/v1/variant/star/097035E5AEE856AD9FDDFABD129DE803A81C016CE5541A8B606FB5642AD0A93D/scale?width=1200&aspectRatio=1.78&format=jpeg"),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Color(0xff220037),
       elevation: 0.0,
        title: Column(
          children: <Widget>[
            logoWidget("assets/lumi_logo_row.png"),
          ],
        ),
       ),

       body: SizedBox(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xff220037),
                Colors.black,
              ],
              tileMode: TileMode.mirror,
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(13),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 400.0,
                      height: 38,
                      child: TextField(
                        onChanged: (value) => updateList(value),
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 78, 78, 78),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          hintText: "Buscar",
                          hintStyle: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.w600),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white60,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      "Principais buscas",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.7),
                              offset: Offset(4, 7),
                              blurRadius: 8,
                            )
                          ],
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Expanded(
                      child: display_list.length == 0
                          ? Center(
                              child: Text(
                              "Sem resultados",
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold),
                            ))
                          : ListView.builder(
                              itemCount: display_list.length,
                              itemBuilder: (context, index) => ListTile(
                                contentPadding:
                                    EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 18.0),
                                title: Text(
                                  display_list[index].movie_title!,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.0),
                                ),
                                leading: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        display_list[index].movie_poster_url!,
                                        fit: BoxFit.cover,
                                        width: 160.0,
                                        height: 85.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

   Image logoWidget(String imageName) {
    return Image.asset(
      imageName,
      fit: BoxFit.fitWidth,
      width: 120,
      height: 90,
    );
  }
}

