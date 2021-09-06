import 'package:flutter/material.dart';
//import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jogo da Velha',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MeuJogo(),
    );
  }
}

class MeuJogo extends StatefulWidget {
  @override
  _MeuJogoState createState() => _MeuJogoState();
}

class _MeuJogoState extends State<MeuJogo> {
  var mensagem = "Escolha";
  //linha 1
  var a1 = AssetImage("images/nulo.png");
  var a2 = AssetImage("images/nulo.png");
  var a3 = AssetImage("images/nulo.png");
  //linha 2
  var b1 = AssetImage("images/nulo.png");
  var b2 = AssetImage("images/nulo.png");
  var b3 = AssetImage("images/nulo.png");
  //linha 3
  var c1 = AssetImage("images/nulo.png");
  var c2 = AssetImage("images/nulo.png");
  var c3 = AssetImage("images/nulo.png");

  var controlImg = AssetImage("images/x.png");

  int contador = 0;

  void a1Select() {
    setState(() {
      imgControlador();
      contador = contador + 1;
      if (contador % 2 == 0) {
        a1 = AssetImage("images/o.png");
      } else {
        a1 = AssetImage("images/x.png");
      }
      ganhou();
    });
  }

  void a2Select() {
    imgControlador();

    setState(() {
      contador = contador + 1;
      if (contador % 2 == 0) {
        a2 = AssetImage("images/o.png");
      } else {
        a2 = AssetImage("images/x.png");
      }
      ganhou();
    });
  }

  void a3Select() {
    imgControlador();

    setState(() {
      contador = contador + 1;
      if (contador % 2 == 0) {
        a3 = AssetImage("images/o.png");
      } else {
        a3 = AssetImage("images/x.png");
      }
      ganhou();
    });
  }

//----------------------------------
//
  void b1Select() {
    imgControlador();

    setState(() {
      contador = contador + 1;
      if (contador % 2 == 0) {
        b1 = AssetImage("images/o.png");
      } else {
        b1 = AssetImage("images/x.png");
      }
      ganhou();
    });
  }

  void b2Select() {
    imgControlador();

    setState(() {
      contador = contador + 1;
      if (contador % 2 == 0) {
        b2 = AssetImage("images/o.png");
      } else {
        b2 = AssetImage("images/x.png");
      }
      ganhou();
    });
  }

  void b3Select() {
    imgControlador();

    setState(() {
      contador = contador + 1;
      if (contador % 2 == 0) {
        b3 = AssetImage("images/o.png");
      } else {
        b3 = AssetImage("images/x.png");
      }
      ganhou();
    });
  }

//==========================================================
//

  void c1Select() {
    imgControlador();

    setState(() {
      contador = contador + 1;
      if (contador % 2 == 0) {
        c1 = AssetImage("images/o.png");
      } else {
        c1 = AssetImage("images/x.png");
      }
      ganhou();
    });
  }

  void c2Select() {
    imgControlador();

    setState(() {
      contador = contador + 1;
      if (contador % 2 == 0) {
        c2 = AssetImage("images/o.png");
      } else {
        c2 = AssetImage("images/x.png");
      }
      ganhou();
    });
  }

  void c3Select() {
    imgControlador();

    setState(() {
      contador = contador + 1;
      if (contador % 2 == 0) {
        c3 = AssetImage("images/o.png");
      } else {
        c3 = AssetImage("images/x.png");
      }
      ganhou();
    });
  }

  void ganhou() {
    setState(() {
      if (a1 == a2 && a2 == a3) {
        if (a1 == AssetImage("images/o.png")) {
          mensagem = "O - ganhou";
          showAlertDialog(context);
        } else if (a1 == AssetImage("images/x.png")) {
          mensagem = "X - ganhou";
          showAlertDialog(context);
        } else {
          mensagem = "Escolha:";
        }
      }
    });
    setState(() {
      if (b1 == b2 && b2 == b3) {
        if (b1 == AssetImage("images/o.png")) {
          mensagem = "O - ganhou";
          showAlertDialog(context);
        } else if (b1 == AssetImage("images/x.png")) {
          mensagem = "X - ganhou";
          showAlertDialog(context);
        } else {
          mensagem = "Escolha:";
        }
      }
    });
    setState(() {
      if (c1 == c2 && c2 == c3) {
        if (c1 == AssetImage("images/o.png")) {
          mensagem = "O - ganhou";
          showAlertDialog(context);
        } else if (c1 == AssetImage("images/x.png")) {
          mensagem = "X - ganhou";
          showAlertDialog(context);
        } else {
          mensagem = "Escolha:";
        }
      }
    });

    setState(() {
      if (a1 == b1 && b1 == c1) {
        if (b1 == AssetImage("images/o.png")) {
          mensagem = "O - ganhou";
          showAlertDialog(context);
        } else if (b1 == AssetImage("images/x.png")) {
          mensagem = "X - ganhou";
          showAlertDialog(context);
        } else {
          mensagem = "Escolha:";
        }
      }
    });
    setState(() {
      if (a1 == b1 && b1 == c1) {
        if (b1 == AssetImage("images/o.png")) {
          mensagem = "O - ganhou";
          showAlertDialog(context);
        } else if (b1 == AssetImage("images/x.png")) {
          mensagem = "X - ganhou";
          showAlertDialog(context);
        } else {
          mensagem = "Escolha:";
        }
      }
    });
    setState(() {
      if (a2 == b2 && b2 == c2) {
        if (b2 == AssetImage("images/o.png")) {
          mensagem = "O - ganhou";
          showAlertDialog(context);
        } else if (b2 == AssetImage("images/x.png")) {
          mensagem = "X - ganhou";
          showAlertDialog(context);
        } else {
          mensagem = "Escolha:";
        }
      }
    });
    setState(() {
      if (a3 == b3 && b3 == c3) {
        if (b3 == AssetImage("images/o.png")) {
          mensagem = "O - ganhou";
          showAlertDialog(context);
        } else if (b3 == AssetImage("images/x.png")) {
          mensagem = "X - ganhou";
          showAlertDialog(context);
        } else {
          mensagem = "Escolha:";
        }
      }
    });
    setState(() {
      if (a1 == b2 && c3 == b2) {
        if (b2 == AssetImage("images/o.png")) {
          mensagem = "O - ganhou";
          showAlertDialog(context);
        } else if (b2 == AssetImage("images/x.png")) {
          mensagem = "X - ganhou";
          showAlertDialog(context);
        } else {
          mensagem = "Escolha:";
        }
      }
    });
    setState(() {
      if (a3 == b2 && c1 == b2) {
        if (b2 == AssetImage("images/o.png")) {
          mensagem = "O - ganhou";
          showAlertDialog(context);
        } else if (b2 == AssetImage("images/x.png")) {
          mensagem = "X - ganhou";
          showAlertDialog(context);
        } else {
          mensagem = "Escolha:";
        }
      }
    });
  }

  void resetJogo() {
    //linha 1
    a1 = AssetImage("images/nulo.png");
    a2 = AssetImage("images/nulo.png");
    a3 = AssetImage("images/nulo.png");
    //linha 2
    b1 = AssetImage("images/nulo.png");
    b2 = AssetImage("images/nulo.png");
    b3 = AssetImage("images/nulo.png");
    //linha 3
    c1 = AssetImage("images/nulo.png");
    c2 = AssetImage("images/nulo.png");
    c3 = AssetImage("images/nulo.png");
  }

  showAlertDialog(BuildContext context) {
    // configura o button
    Widget okButton = FlatButton(
        child: Text("Novo Jogo"),
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => MeuJogo())));
    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text("Fim de Jogo"),
      content: Text(mensagem),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }

  inicio(BuildContext context) {
    // configura o button
    Widget okButton = FlatButton(
        child: Text("Novo Jogo"),
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => MeuJogo())));
    // configura o  AlertDialog
  }

  imgControlador() {
    if (contador % 2 == 0) {
      controlImg = AssetImage("images/o.png");
    } else {
      controlImg = AssetImage("images/x.png");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jogo da Velha"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "Vez de: ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Image(
            image: controlImg,
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(top: 2, bottom: 20),
            child: Text(mensagem,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  a1Select();
                },
                child: Image(
                  image: a1,
                  height: 70,
                ),
              ),
              GestureDetector(
                onTap: () => a2Select(),
                child: Image(
                  image: a2,
                  height: 70,
                ),
              ),
              GestureDetector(
                onTap: () => a3Select(),
                child: Image(
                  image: a3,
                  height: 70,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => b1Select(),
                child: Image(
                  image: b1,
                  height: 70,
                ),
              ),
              GestureDetector(
                onTap: () => b2Select(),
                child: Image(
                  image: b2,
                  height: 70,
                ),
              ),
              GestureDetector(
                onTap: () => b3Select(),
                child: Image(
                  image: b3,
                  height: 70,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => c1Select(),
                child: Image(
                  image: c1,
                  height: 70,
                ),
              ),
              GestureDetector(
                onTap: () => c2Select(),
                child: Image(
                  image: c2,
                  height: 70,
                ),
              ),
              GestureDetector(
                onTap: () => c3Select(),
                child: Image(
                  image: c3,
                  height: 70,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => MeuJogo())),
                  child: FlatButton(
                    child: const Text('Restart',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    color: Colors.red,
                    splashColor: Colors.red,
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MeuJogo())),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
