import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ô o bixo vindo mulek',
      home: MinhaHome(),
    );
  }
}

class MinhaHome extends StatefulWidget {
  const MinhaHome({Key? key}) : super(key: key);

  @override
  State<MinhaHome> createState() => _MinhaHomeState();
}

class _MinhaHomeState extends State<MinhaHome> {
  double _largura = 100;
  double _altura = 100;
  int nIMG = 1;
  var imagens = {
    1: Image.network(
      "https://cdn.discordapp.com/attachments/880872510923616317/978647039338479686/0.jpg",
    ),
    2: Image.network(
      "https://cdn.discordapp.com/attachments/880872510923616317/978647039338479686/0.jpg",
    ),
    3: Image.network(
      "https://cdn.discordapp.com/attachments/880872510923616317/978647065146032128/1.jpg",
    ),
    4: Image.network(
      "https://cdn.discordapp.com/attachments/880872510923616317/978647065146032128/1.jpg",
    ),
    5: Image.network(
      "https://cdn.discordapp.com/attachments/880872510923616317/978647082397208616/2.jpg",
    ),
    6: Image.network(
      "https://cdn.discordapp.com/attachments/880872510923616317/978647108125081600/4.jpg",
    ),
    7: Image.network(
      "https://cdn.discordapp.com/attachments/880872510923616317/978647136986099772/5.jpg",
    ),
    8: Image.network(
      "https://cdn.discordapp.com/attachments/880872510923616317/978654226559410266/Sem_Titulo-2.png",
    ),
  };
  void AumentarLargura() {
    setState(() {
      _largura += 50;
      _altura += 25;
      nIMG += 1;
    });
  }

  void DiminuirLargura() {
    setState(() {
      _largura -= 50;
      _altura += 25;
      nIMG -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ô o bixo vindo mulek"),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Container(
                width: _largura, height: _altura, child: imagens[nIMG])),
        bottomNavigationBar: BottomAppBar(
            color: Colors.green,
            child: Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(
                  30,
                  0,
                  70,
                  0,
                ),
                child: Row(children: <Widget>[
                  Icon(Icons.height_outlined, color: Colors.white),
                  Text("Clique aqui ->  "),
                  IconButton(
                      icon: Icon(Icons.add_circle),
                      color: Colors.white,
                      onPressed: AumentarLargura),
                  IconButton(
                      icon: Icon(Icons.remove_circle),
                      color: Colors.white,
                      onPressed: DiminuirLargura),
                ]))));
  }
}
