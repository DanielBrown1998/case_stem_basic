import 'package:steam/domain/entities/aluno_entity.dart';

abstract class AlunoWorkflow {
  AlunoEntity getAlunoById(String id);
  bool updateAluno(AlunoEntity aluno);
  bool deleteAluno(String id);
}
