import 'package:steam/domain/entities/disciplina_entity.dart';
import 'package:steam/domain/workflow/disciplina_workflow.dart';

class DisciplinaRepository implements DisciplinaWorkflow {
  @override
  DisciplinaEntity getDisciplinaByCodigo(String codigo) {
    throw UnimplementedError();
  }

}
