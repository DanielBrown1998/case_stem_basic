import 'package:steam/domain/entities/disciplina_entity.dart';

abstract class GetCurrentCoursesUseCaseAbstract {
  GetCurrentCoursesUseCaseAbstract();

  Future<List<DisciplinaEntity>> call(String codigoAluno);
}
