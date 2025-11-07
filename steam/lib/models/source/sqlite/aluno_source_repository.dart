import 'package:steam/domain/entities/aluno_disciplina_entity.dart';
import 'package:steam/domain/workflow/aluno_disciplina_workflow.dart';

class AlunoDisciplinaSource implements AlunoDisciplinaWorkflow {
  @override
  bool createAlunoDisciplina(AlunoDisciplinaEntity alunoDisciplina) {
    // TODO: implement createAlunoDisciplina
    throw UnimplementedError();
  }

  @override
  AlunoDisciplinaEntity getAlunoDisciplinaByIdAluno(String idAluno) {
    // TODO: implement getAlunoDisciplinaByIdAluno
    throw UnimplementedError();
  }

  @override
  AlunoDisciplinaEntity getAlunoDisciplinaByIdDisciplina(String idDisciplina) {
    // TODO: implement getAlunoDisciplinaByIdDisciplina
    throw UnimplementedError();
  }

  @override
  bool updateAlunoDisciplina(AlunoDisciplinaEntity alunoDisciplina) {
    // TODO: implement updateAlunoDisciplina
    throw UnimplementedError();
  }

  // Repository methods would go here
}