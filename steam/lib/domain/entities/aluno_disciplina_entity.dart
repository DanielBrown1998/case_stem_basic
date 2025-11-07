// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:steam/core/helpers/class_types.dart';
import 'package:steam/domain/entities/exame_entity.dart';

class AlunoDisciplinaEntity {
  final String codigoAluno;
  final String codigoDisciplina;
  ExameEntity? firstExame;
  ExameEntity? secondExame;
  ExameEntity? exameFinal;
  ClassTypes status;

  AlunoDisciplinaEntity({
    required this.codigoAluno,
    required this.codigoDisciplina,
    this.firstExame,
    this.secondExame,
    this.exameFinal,
    this.status = ClassTypes.naoCursado,
  });


  AlunoDisciplinaEntity copyWith({
    String? codigoAluno,
    String? codigoDisciplina,
    ExameEntity? firstExame,
    ExameEntity? secondExame,
    ExameEntity? exameFinal,
    ClassTypes? status,
  }) {
    return AlunoDisciplinaEntity(
      codigoAluno: codigoAluno ?? this.codigoAluno,
      codigoDisciplina: codigoDisciplina ?? this.codigoDisciplina,
      firstExame: firstExame ?? this.firstExame,
      secondExame: secondExame ?? this.secondExame,
      exameFinal: exameFinal ?? this.exameFinal,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codigoAluno': codigoAluno,
      'codigoDisciplina': codigoDisciplina,
      'firstExame': firstExame?.toMap(),
      'secondExame': secondExame?.toMap(),
      'exameFinal': exameFinal?.toMap(),
      'status': classTypeToString(status),
    };
  }

  factory AlunoDisciplinaEntity.fromMap(Map<String, dynamic> map) {
    return AlunoDisciplinaEntity(
      codigoAluno: map['codigoAluno'] as String,
      codigoDisciplina: map['codigoDisciplina'] as String,
      firstExame: map['firstExame'] != null ? ExameEntity.fromMap(map['firstExame'] as Map<String,dynamic>) : null,
      secondExame: map['secondExame'] != null ? ExameEntity.fromMap(map['secondExame'] as Map<String,dynamic>) : null,
      exameFinal: map['exameFinal'] != null ? ExameEntity.fromMap(map['exameFinal'] as Map<String,dynamic>) : null,
      status: classTypefromString(map['status'] as String),
    );
  }

  String toJson() => json.encode(toMap());

  factory AlunoDisciplinaEntity.fromJson(String source) => AlunoDisciplinaEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AlunoDisciplinaEntity(codigoAluno: $codigoAluno, codigoDisciplina: $codigoDisciplina, firstExame: $firstExame, secondExame: $secondExame, exameFinal: $exameFinal, status: $status)';
  }

  @override
  bool operator ==(covariant AlunoDisciplinaEntity other) {
    if (identical(this, other)) return true;
  
    return 
      other.codigoAluno == codigoAluno &&
      other.codigoDisciplina == codigoDisciplina &&
      other.firstExame == firstExame &&
      other.secondExame == secondExame &&
      other.exameFinal == exameFinal &&
      other.status == status;
  }

  @override
  int get hashCode {
    return codigoAluno.hashCode ^
      codigoDisciplina.hashCode ^
      firstExame.hashCode ^
      secondExame.hashCode ^
      exameFinal.hashCode ^
      status.hashCode;
  }
}
