enum ExamTypes {
  // ignore: constant_identifier_names
  P1,
  // ignore: constant_identifier_names
  P2,
  // ignore: constant_identifier_names
  PF,
}

String typeToString(ExamTypes type) {
  switch (type) {
    case ExamTypes.P1:
      return 'P1';
    case ExamTypes.P2:
      return 'P2';
    case ExamTypes.PF:
      return 'PF';
  }
}

ExamTypes typeFromString(String type) {
  switch (type) {
    case 'P1':
      return ExamTypes.P1;
    case 'P2':
      return ExamTypes.P2;
    case 'PF':
      return ExamTypes.PF;
    default:
      throw Exception('Invalid exam type');
  }
}
