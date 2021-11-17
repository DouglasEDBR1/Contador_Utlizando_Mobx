import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'controller.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

/*  var _contador = 0;

  _incrementar(){
    setState(() {
      _contador++;
    });
  }*/

  Controller controller = Controller();  //Instanciando o Controller, variável controller recebe a instancia

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador:'),
            Padding(padding: EdgeInsets.all(7),
              child: Observer(builder: (_){      //Observer - Vai verificar se houve alguma alteração de estado no contador, e renderizar a modificação
                return Text(
                  "${controller.contador}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 80
                  ),
                );
              }),
            ),
            Padding(
              padding: EdgeInsets.only(top: 200),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen
                  ),
                  onPressed: (){
                    controller.incrementar();
                  },
                  child: Text(
                    'Acrescentar',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
