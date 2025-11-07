import 'package:steam/domain/entities/disciplina_entity.dart';

abstract class DisciplinaWorkflow {
  DisciplinaEntity getDisciplinaByCodigo(String codigo);
  
}