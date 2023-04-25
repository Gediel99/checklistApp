class ModeloTask {
  String tarefa;
  List<ListTask> listTask;

  ModeloTask({required this.tarefa, required this.listTask});

  static fromMap(Map<String, dynamic> category) {}
}

class ListTask {}
