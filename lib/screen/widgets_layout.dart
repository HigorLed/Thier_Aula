import 'package:flutter/material.dart';
import 'package:new_project/main.dart';
import 'package:new_project/widgets/titulo_sessao.dart';

class WidgetsLayout extends StatelessWidget {
  const WidgetsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widgets de Layout")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSessao(titulo: 'Padding'),
          Container(
            color: Colors.amberAccent,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text("texto com padding com 20px"),
            ),
          ),
          Divider(),
          TituloSessao(titulo: 'Align'),
          Container(
            height: 80,
            color: Colors.amberAccent,
            child: Align(
              alignment: Alignment.center,
              child: Text('Alinhamento de Texto'),
            ),
          ),
          Divider(),
          TituloSessao(titulo: 'center'),
          Container(
            height: 80,
            color: Colors.amberAccent,
            child: Center(child: Text('ALinhamento de texto centralizado')),
          ),
          Divider(),
          TituloSessao(titulo: 'sizedBox'),
          Column(
            children: [
              Text('Texto acima do SizedBox'),
              SizedBox(height: 20),
              Text('Texto abaixo do SizedBox'),
            ],
          ),
          Divider(),
          TituloSessao(titulo: 'expanded e flexible (em Column)'),
          Container(
            height: 200,
            color: Colors.amberAccent,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Center(child: Text('Expanded')),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    child: Center(child: Text('Flexible')),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          TituloSessao(titulo: 'expanded e flexible (em Row)'),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  color: Colors.red,
                  child: Center(child: Text('Expanded')),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  height: 50,
                  color: Colors.green,
                  child: Center(child: Text('Flexible (flex: 1)')),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
