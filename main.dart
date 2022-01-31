import 'controller/tarefa_controller.dart';

main() {
  TarefaController tarefaController = TarefaController();
  int numero = tarefaController.obterNumero();
  int somatorio = tarefaController.calcularSomatorio(numero);
  tarefaController.imprimirResultado(numero, somatorio);
}
