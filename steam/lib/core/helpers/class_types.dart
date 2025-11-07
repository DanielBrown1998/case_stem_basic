enum ClassTypes { cursando, aprovado, reprovado, naoCursado }

classTypefromString(String status) {
  switch (status) {
    case 'cursando':
      return ClassTypes.cursando;
    case 'aprovado':
      return ClassTypes.aprovado;
    case 'reprovado':
      return ClassTypes.reprovado;
    case 'naoCursado':
      return ClassTypes.naoCursado;
    default:
      throw Exception('Invalid class type string: $status');
  }
}
classTypeToString(ClassTypes status) {
  switch (status) {
    case ClassTypes.cursando:
      return 'cursando';
    case ClassTypes.aprovado:
      return 'aprovado';
    case ClassTypes.reprovado:
      return 'reprovado';
    case ClassTypes.naoCursado:
      return 'naoCursado';
  }
}