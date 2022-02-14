//ler http://www.macoratti.net/19/06/flut_alertdi1.htm

import 'package:flutter/material.dart';
import 'package:exemplo11/teste.dart';

//criando a funcao principal q é a funcao main...
void main() {
//ela vai chamar a funcao MeuApp que é ali q o APP vai iniciar
  runApp(
    MeuApp(),
  );
}

class MeuApp extends StatefulWidget {
  //const MeuApp({ Key? key }) : super(key: key);

  @override
  _MeuAppState createState() => _MeuAppState();
}

//criando a classe MeuAppSTATE q extende o ESTADO de MeuApp
class _MeuAppState extends State<MeuApp> {
//declarando uma variavel STRING "alterandoValorDoCOntainer" com valor OI
  String alterandoValorDoContainer = "oi ";

//metodo/classe construtor
  @override
  Widget build(BuildContext context) {
    //chamando o MaterialApp para design
    return MaterialApp(
      //esqueleto do app
      home: Scaffold(
        //cor padrao do app
        backgroundColor: Colors.blue,
        //body/corpo recebe o safe area ou seja... tudo q ta nessa area NAO fica em baixo
        //do relogio do celular, sinal da torre, etc... AREA VISIVEL
        body: SafeArea(
          //detector de gesto
          child: GestureDetector(
            //ao ser tocado em algum lugar do CONTAINER
            onTap: () {
              //chama a funcao SetSTATE para mudar o ESTADO/VALOR da variavel "alterandoValorCOntainer"
              setState(() {
                //mudando o valor da variavel para fera
                alterandoValorDoContainer = 'fera';
              });
            },
            //criando o container... e definindo altura, largura, margem e cor...
            child: Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.only(left: 30.0),
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              //texto do container
              //o container vai exibir o texto NOVO q ta na variavel
              //alterandoVAlorDoContainer... o texto novo é FERA...
              //o velho era OI
              child: Text('ola munduu, $alterandoValorDoContainer'),
            ),
          ),
        ),
      ),
    );
  }
}
