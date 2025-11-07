
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:steam/domain/entities/aluno_entity.dart';

class LoginUseCase {
  //TODO: Adicionar o repositório como dependência
  LoginUseCase();

  Future<AlunoEntity> call({
    required String matricula,
    required String password,
  }) async {
    // TODO: Implementar a lógica de login, por exemplo, chamando um repositório de autenticação.
    // Por enquanto, retorna um aluno mockado.
    await Future.delayed(const Duration(seconds: 1));
    return AlunoEntity(
      matricula: matricula,
      firstName: 'Fulano',
      lastName: 'de Tal',
      email: 'fulano.tal@example.com',
    );
  }
}
