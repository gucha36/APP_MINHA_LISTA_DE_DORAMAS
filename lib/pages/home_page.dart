import 'package:flutter/material.dart';
import 'package:meus_doramas/pages/doramas_assistidos_page.dart';
import 'package:meus_doramas/pages/meus_doramas_favoritos.dart';
import 'package:meus_doramas/pages/meus_doramas_para_assistir.dart';
import 'package:meus_doramas/widgets/assinatura_widget.dart'; // Atualize o caminho conforme necessário

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Transform.translate(
            offset: const Offset(0, -20), // Mover o texto para cima
            child: const Text(
              'Minha Lista \nde Doramas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'IngridDarling',
                fontSize: 80,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          const SizedBox(height: 40), // Espaçamento abaixo do título

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // Coluna para a primeira imagem e texto
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MeusDoramasFavoritos()),
                  );
                },
                child: Column(
                  children: [
                    Transform.translate(
                      offset: const Offset(20, -50), // Mover a imagem
                      child: Image.asset(
                        'lib/assets/favoritos.png',
                        width: 105,
                        height: 105,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(20, -45), // Mover o texto
                      child: const Text(
                        'Favoritos',
                        style: TextStyle(
                          fontFamily: 'IngridDarling',
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Coluna para a segunda imagem e texto
              Padding(
                padding: const EdgeInsets.only(
                    top: 30.0), // Define o espaço superior
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MeusDoramasParaAssistir(),
                      ),
                    );
                  },
                  child: Container(
                    width: 115,
                    height:
                        150 + 50, // Ajuste a altura para incluir imagem e texto
                    child: Stack(
                      children: [
                        Positioned(
                          bottom:
                              20, // Posiciona a imagem na parte inferior do container
                          child: Image.asset(
                            'lib/assets/para_assistir.png',
                            width: 115,
                            height: 115,
                          ),
                        ),
                        Positioned(
                          bottom: 0, // Posiciona o texto logo abaixo da imagem
                          child: Transform.translate(
                            offset: const Offset(20,
                                0), // Ajusta o deslocamento conforme necessário
                            child: const Text(
                              'Para Assistir',
                              style: TextStyle(
                                fontFamily: 'IngridDarling',
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Coluna para a terceira imagem e texto
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DoramasAssistidosPage()),
                  );
                },
                child: Column(
                  children: [
                    Transform.translate(
                      offset: const Offset(-20, -50), // Mover a imagem
                      child: Image.asset(
                        'lib/assets/assistidos.png',
                        width: 120,
                        height: 120,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(-20, -50), // Mover o texto
                      child: const Text(
                        'Assistidos',
                        style: TextStyle(
                          fontFamily: 'IngridDarling',
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const Spacer(), // Empurra o próximo widget para o final da página
          AssinaturaWidget(),
        ],
      ),
    );
  }
}
