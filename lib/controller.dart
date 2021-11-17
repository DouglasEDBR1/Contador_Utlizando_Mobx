import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller; //Classe ControllerBase mescla com _$Controller(nome padrão utilizado) para ser utilizado em uma única classe(Controller)

//A Utilização do mixin Store é para geração do códigos automáticos
abstract class ControllerBase with Store {


  @observable
  int contador = 0;

  @action
  incrementar() {
    contador++;
  }

}

//Método sem as dependências -> mobx_codegen, build_runner:


/*  var _contador = Observable(0); //MobX | Observable - Valor inicial 0, um item que vai alterar seu estado
  late Action incrementar;

  Controller(){
    incrementar = Action(_incrementar); //Criou uma ação que recebe um método de execução, que é atribuido Action incrementar(variável).
    //O controller incrementar vai chamar essa ação.

  }

  int get contador => _contador.value;
  set contador(int novoValor) => _contador.value = novoValor;

  _incrementar(){   //Método que vai incrementar, vai alterar o valor do contador. É preci

    //contador.value = contador.value +1; //O contador passa a ser observável e tem um valor associado a ele(0)
    contador++;
  }

} */