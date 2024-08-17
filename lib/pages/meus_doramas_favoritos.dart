import 'package:flutter/material.dart';
import 'package:meus_doramas/pages/home_page.dart';
import 'package:meus_doramas/widgets/assinatura_widget.dart';

class MeusDoramasFavoritos extends StatefulWidget {
  @override
  _MeusDoramasFavoritosState createState() => _MeusDoramasFavoritosState();
}

class _MeusDoramasFavoritosState extends State<MeusDoramasFavoritos> {
  List<String> doramas = [];
  final TextEditingController _controller = TextEditingController();

  void _adicionarDorama() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        doramas.add(_controller.text);
        _controller.clear(); // Limpa o campo de texto após adicionar
      });
    }
  }

  void _excluirDorama(int index) {
    setState(() {
      doramas.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0), // Reduz a altura do AppBar a zero
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
      ),
      body: Stack(
        children: [
          // Imagem de fundo com opacidade ajustada
          Positioned.fill(
            child: Opacity(
              opacity: 0.15, // Ajuste a opacidade conforme desejado (0.0 a 1.0)
              child: Image.asset(
                'lib/assets/florcerejeira.png',
                fit: BoxFit.cover, // Ajusta a imagem para cobrir a área
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    'Meus Doramas Favoritos',
                    style: TextStyle(
                      fontFamily: 'IngridDarling', // Substitua pela sua fonte
                      fontSize: 50, // Tamanho da fonte conforme desejado
                    ),
                  ),
                ),
                const SizedBox(
                    height: 60), // Ajuste o espaçamento abaixo do título
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: const InputDecoration(
                          hintText: 'Digite o nome do dorama',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: _adicionarDorama,
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: doramas.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(doramas[index]),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () => _excluirDorama(index),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 70, // Subindo a seta junto com o título
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        HomePage(), // Certifique-se de que HomePage está importado
                  ),
                );
              },
              child: Image.asset(
                'lib/assets/seta esquerda.png',
                width: 50, // Ajuste a largura conforme necessário
                height: 90, // Ajuste a altura conforme necessário
              ),
            ),
          ),
          const Spacer(), // Empurra o próximo widget para o final da página
          AssinaturaWidget(),
        ],
      ),
    );
  }
}
