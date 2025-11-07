part of 'database.dart';

int versionDB = 1;

Map<String, Map<int, String>> _dbVersionsToTableNames = {
  tableAluno: {
    1:
        '''
          CREATE TABLE $tableAluno (
            matricula TEXT PRIMARY KEY,
            firstName TEXT,
            lastName TEXT,
            email TEXT
          )
        ''',
  },
  tableDisciplina: {
    1:
        '''
          CREATE TABLE $tableDisciplina (
            code TEXT PRIMARY KEY,
            name TEXT,
            credit INTEGER
          )
        ''',
  },
  tableExame: {
    1:
        '''
          CREATE TABLE $tableExame (
            id INTEGER PRIMARY KEY,
            type TEXT,
            codigoDisciplina TEXT,
            dataExame TEXT,
            FOREIGN KEY (codigoDisciplina) REFERENCES $tableDisciplina (code)
          )
        ''',
  },
  tableAlunoDisciplina: {
    1:
        '''
          CREATE TABLE $tableAlunoDisciplina (
            firstExame TEXT,
            secondExame TEXT,
            exameFinal TEXT,
            codigoAluno TEXT,
            codigoDisciplina TEXT,
            status INTEGER,

            PRIMARY KEY (codigoAluno, codigoDisciplina),

            FOREIGN KEY (codigoAluno) REFERENCES $tableAluno (matricula),
            FOREIGN KEY (codigoDisciplina) REFERENCES $tableDisciplina (code),
            FOREIGN KEY (firstExame) REFERENCES $tableExame (id),
            FOREIGN KEY (secondExame) REFERENCES $tableExame (id),
            FOREIGN KEY (exameFinal) REFERENCES $tableExame (id)
          )
        ''',
  },
};
