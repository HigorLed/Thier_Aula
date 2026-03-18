import 'package:flutter/material.dart';
import 'package:new_project/screen/widgets_conteudo.dart';
import 'package:new_project/screen/widgets_layout.dart';

void main() {
  runApp(const MyApp());
  //const Text('Olá, Flutter!', textDirection: TextDirection.ltr);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: const Color.fromARGB(255, 68, 204, 231),
        ),
      ),
      home: ListContets(),
    );
  }
}

class ListContets extends StatelessWidget {
  final List<CatalogoItem> sessoes = [
    CatalogoItem(
     title: "Widget de conteúdo",
     icone: Icons.text_fields,
     descricao: 'Exemplos de widgets básicas para exibir conteúdo, como texto, imagens e ícones.',
     destino: WidgetsConteudo(),
     )

     CatalogoItem(
     title: "Widget de Layout",
     icone: Icons.view_agenda,
     descricao: 'Exemplos / demonstrações de padding, column, flexible...',
     destino: WidgetsLayout(),
     )
  ];
  
   ListContets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Catálogo de Widgets')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => WidgetsConteudo()),
            ),
            child: Text('Widgets de conteudo'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => WidgetsLayout()),
            ),
            child: Text('Widgets de Layout'),
          ),
        ],
      ),
    );
  }
}

class CatalogoItem {
  final String title;
  final IconData icone;
  final String descricao;
  final Widget destino;

  CatalogoItem({
    required this.title,
    required this.icone,
    required this.descricao,
    required this.destino,
  });
}
