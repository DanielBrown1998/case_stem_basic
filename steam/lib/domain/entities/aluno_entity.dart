// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AlunoEntity {
  final String matricula;
  final String firstName;
  final String lastName;
  final String email;

  AlunoEntity({
    required this.matricula,
    required this.firstName,
    required this.lastName,
    required this.email,
  });
  

  AlunoEntity copyWith({
    String? matricula,
    String? firstName,
    String? lastName,
    String? email,
  }) {
    return AlunoEntity(
      matricula: matricula ?? this.matricula,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matricula': matricula,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
    };
  }

  factory AlunoEntity.fromMap(Map<String, dynamic> map) {
    return AlunoEntity(
      matricula: map['matricula'] as String,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AlunoEntity.fromJson(String source) => AlunoEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AlunoEntity(matricula: $matricula, firstName: $firstName, lastName: $lastName, email: $email)';
  }

  @override
  bool operator ==(covariant AlunoEntity other) {
    if (identical(this, other)) return true;
  
    return 
      other.matricula == matricula &&
      other.firstName == firstName &&
      other.lastName == lastName &&
      other.email == email;
  }

  @override
  int get hashCode {
    return matricula.hashCode ^
      firstName.hashCode ^
      lastName.hashCode ^
      email.hashCode;
  }
}
