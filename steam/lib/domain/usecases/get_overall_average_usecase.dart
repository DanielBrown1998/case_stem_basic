abstract class GetOverallAverageUseCaseAbstract {
  //TODO: Adicionar o repositório como dependência
  GetOverallAverageUseCaseAbstract();

  Future<double> call(String codigoAluno);
}
