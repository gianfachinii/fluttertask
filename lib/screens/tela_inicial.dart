import 'package:flutter/material.dart';

import '../component/tasks.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  bool opacidade = true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarefas'),
        leading: Icon(Icons.add_task),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1.0 : 0.0,
        duration: Duration(seconds: 1),
        child: ListView(
          children: [
            Task('Aprender Flutter com o Melho Matues', 'assets/images/flutter.png', 5),
            Task('Andar de bike', 'assets/images/bike.webp', 4),
            Task('Meditar', 'assets/images/meditar.jpeg', 3),
            Task('Ler', 'assets/images/ler.jpg', 3),
            Task('Ir para o intervalo', 'assets/images/jogar.jpg', 2),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: Icon(Icons.remove_red_eye),
      ),
    );
  }
}
