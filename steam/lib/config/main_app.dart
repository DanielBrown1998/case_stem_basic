import 'package:flutter/material.dart';
import 'package:steam/view/auth/auth.dart';

class AcademicApp extends StatelessWidget {
  const AcademicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SISTEMA ACADEMICO',
      theme: ThemeData.light(useMaterial3: true),
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: const AuthPage(title: 'SISTEMA ACADEMICO'),
    );
  }
}
