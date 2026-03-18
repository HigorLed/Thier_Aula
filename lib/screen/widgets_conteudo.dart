import 'package:flutter/material.dart';
import 'package:new_project/widgets/titulo_sessao.dart';

class WidgetsConteudo extends StatelessWidget {
  const WidgetsConteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets de Conteúdo')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSessao(titulo: 'Textos'),
          Text(
            'Texto estilizado',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text('Texto com estilo padrão', style: TextStyle(fontSize: 18)),

          Divider(),
          TituloSessao(titulo: 'Imagens'),
          Image.network('https://picsum.photos/seed/picsum/200/300'),

          Divider(),
          TituloSessao(titulo: 'Ícones'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.favorite, color: Colors.red, size: 32),
              Icon(Icons.star, color: Colors.yellow, size: 32),
              Icon(Icons.settings, color: Colors.blue, size: 32),
            ],
          ),

          Divider(),
          TituloSessao(titulo: 'Elevated button'),
          ElevatedButton(onPressed: () {}, child: Text('clique aqui')),
        ],
      ),
    );
  }
}
