// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:steam/core/helpers/exam_types.dart';

class ExameEntity {
  final String id;
  final ExamTypes type;
  final String codigoDisciplina;
  final String dataExame;
  ExameEntity({
    required this.id,
    required this.type,
    required this.codigoDisciplina,
    required this.dataExame,
  });

  ExameEntity copyWith({
    String? id,
    ExamTypes? type,
    String? codigoDisciplina,
    String? dataExame,
  }) {
    return ExameEntity(
      id: id ?? this.id,
      type: type ?? this.type,
      codigoDisciplina: codigoDisciplina ?? this.codigoDisciplina,
      dataExame: dataExame ?? this.dataExame,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': typeToString(type),
      'codigoDisciplina': codigoDisciplina,
      'dataExame': dataExame,
    };
  }

  factory ExameEntity.fromMap(Map<String, dynamic> map) {
    return ExameEntity(
      id: map['id'] as String,
      type: typeFromString(map['type'] as String),
      codigoDisciplina: map['codigoDisciplina'] as String,
      dataExame: map['dataExame'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ExameEntity.fromJson(String source) =>
      ExameEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ExameEntity(id: $id, type: $type, codigoDisciplina: $codigoDisciplina, dataExame: $dataExame)';
  }

  @override
  bool operator ==(covariant ExameEntity other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.type == type &&
        other.codigoDisciplina == codigoDisciplina &&
        other.dataExame == dataExame;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        type.hashCode ^
        codigoDisciplina.hashCode ^
        dataExame.hashCode;
  }
}
