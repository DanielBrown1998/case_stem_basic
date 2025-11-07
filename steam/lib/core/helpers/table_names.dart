enum TableNames { aluno, disciplina, alunoDisciplina, exame }

extension TableNamesExtension on TableNames {
  String get name {
    switch (this) {
      case TableNames.aluno:
        return 'aluno';
      case TableNames.disciplina:
        return 'disciplina';
      case TableNames.alunoDisciplina:
        return 'aluno_disciplina';
      case TableNames.exame:
        return 'exame';
    }
  }
}

extension StringExtension on String {
  TableNames? toTableName() {
    switch (this) {
      case 'aluno':
        return TableNames.aluno;
      case 'disciplina':
        return TableNames.disciplina;
      case 'aluno_disciplina':
        return TableNames.alunoDisciplina;
      case 'exame':
        return TableNames.exame;
      default:
        return null;
    }
  }
}
