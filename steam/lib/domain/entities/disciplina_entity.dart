// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


class DisciplinaEntity {
  final String code;
  final String name;
  final int credit;
  DisciplinaEntity({
    required this.code,
    required this.name,
    required this.credit,
  });
  

  DisciplinaEntity copyWith({
    String? code,
    String? name,
    int? credit,
  }) {
    return DisciplinaEntity(
      code: code ?? this.code,
      name: name ?? this.name,
      credit: credit ?? this.credit,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'name': name,
      'credit': credit,
    };
  }

  factory DisciplinaEntity.fromMap(Map<String, dynamic> map) {
    return DisciplinaEntity(
      code: map['code'] as String,
      name: map['name'] as String,
      credit: map['credit'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory DisciplinaEntity.fromJson(String source) => DisciplinaEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'DisciplinaEntity(code: $code, name: $name, credit: $credit)';

  @override
  bool operator ==(covariant DisciplinaEntity other) {
    if (identical(this, other)) return true;
  
    return 
      other.code == code &&
      other.name == name &&
      other.credit == credit;
  }

  @override
  int get hashCode => code.hashCode ^ name.hashCode ^ credit.hashCode;
}
