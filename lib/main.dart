// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "A gratidão é a memória do coração.",
    "Deixe pra trás o que não te leva pra frente.",
    "Viver não é esperar a tempestade passar, é aprender a dançar na chuva.",
    "As crises não afastam os amigos. Apenas selecionam.",
    "Faça valer a pena, as oportunidades não voltam.",
    "Aprendi o que era certo, com a pessoa errada.",
    "Nada é pequeno quando o amor é grande."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void gerarFrase() {
    var numero = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numero];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/logo.png"),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
                RaisedButton(
                  child: Text(
                    "Nova frase",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.green,
                  onPressed: gerarFrase,
                ),
              ]),
        ),
      ),
    );
  }
}
