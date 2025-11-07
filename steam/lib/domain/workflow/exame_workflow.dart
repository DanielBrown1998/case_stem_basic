import 'package:steam/domain/entities/exame_entity.dart';

abstract class ExameWorkflow {
  ExameEntity getExameByIdDisciplina(String idDisciplina);
  bool updateExame(ExameEntity exame);
}
