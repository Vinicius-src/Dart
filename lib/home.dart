import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: Container(
            child: Image.network(
              "https://cdn-icons-png.flaticon.com/512/2292/2292038.png",
            ),
            padding: const EdgeInsets.fromLTRB(15, 2, 0, 2),
          ),
          title: Center(
              child: Text('Vinicius Chaga',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: (Colors.black87),
                  ))),
        ),
        body:
            Column(children: <Widget>[Expanded(child: conteudo()), rodape()]));
  }

  Widget conteudo() {
    return Row(children: <Widget>[
      Container(
          child: Center(
            child: Image.network(
              "https://cdn.discordapp.com/avatars/819930985788866660/34e3e8e297d49daeb9333ff4e814d1c3.webp?size=80",
              width: 200.0,
            ),
          ),
          width: 100.0,
          height: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 400)),
      Expanded(
          child: Container(
        child: Text(
          "Programador com conhecimentos em Java, HTML,CSS, Dart, JS e MySQL.\nCursando desenvolvimento de sistemas na Etec Bento Quinrino.\n\n\nViver é como andar de bicicleta: é preciso estar em constante movimento para manter o equilíbrio.\nAlbert Einstein\n",
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 20.0, color: (Colors.black87)),
        ),
        padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
        width: 250.0,
        height: double.infinity,
        color: Colors.white,
      ))
    ], textDirection: TextDirection.ltr);
  }

  Widget rodape() {
    return Container(
        child: Center(
            child: Text(
          "Etec Bento Quirino | Desenvolvimento de Sistemas ",
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 17.0, color: (Colors.black87)),
        )),
        color: Colors.white,
        width: double.infinity,
        height: 50.0,
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0));
  }
}
