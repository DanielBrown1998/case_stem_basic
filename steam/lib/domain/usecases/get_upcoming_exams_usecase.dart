import 'package:steam/domain/entities/exame_entity.dart';

abstract class GetUpcomingExamsUseCaseAbstract {
  GetUpcomingExamsUseCaseAbstract();

  Future<List<ExameEntity>> call(String codigoAluno);
}
