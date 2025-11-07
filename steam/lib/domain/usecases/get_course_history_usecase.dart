import 'package:steam/domain/entities/aluno_disciplina_entity.dart';
import 'package:steam/domain/entities/disciplina_entity.dart';

abstract class GetCourseHistoryUseCase {
  //TODO: Adicionar o repositório como dependência
  GetCourseHistoryUseCase();

  Future<Map<DisciplinaEntity, AlunoDisciplinaEntity>> call(String codigoAluno);
}
