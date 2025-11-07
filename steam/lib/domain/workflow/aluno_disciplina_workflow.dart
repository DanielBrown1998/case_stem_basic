import 'package:steam/domain/entities/aluno_disciplina_entity.dart';

abstract class AlunoDisciplinaWorkflow {
  AlunoDisciplinaEntity getAlunoDisciplinaByIdAluno(String idAluno);
  AlunoDisciplinaEntity getAlunoDisciplinaByIdDisciplina(String idDisciplina);
  bool updateAlunoDisciplina(AlunoDisciplinaEntity alunoDisciplina);
  bool createAlunoDisciplina(AlunoDisciplinaEntity alunoDisciplina);
}