import 'package:flutter/widgets.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' show join;
import 'package:sqflite/sqflite.dart';
import 'package:steam/core/error/database_initialization_exception.dart';

part 'config_database.dart';

final String nameDB = 'steam.db';
final String tableExame = 'exame';
final String tableAlunoDisciplina = 'aluno_disciplina';
final String tableDisciplina = 'disciplina';
final String tableAluno = 'aluno';

class DatabaseStem {
  Database? database;
  String? path;

  Future<String> _getPath() async {
    if (path != null) {
      return path!;
    }
    String databasePath = await getDatabasesPath();
    String pathDB = join(databasePath, nameDB);
    return pathDB;
  }

  void deleteDB() async {
    path ??= await _getPath();
    await deleteDatabase(path!);
  }

  Future<void> init() async {
    path ??= await _getPath();
    database = await openDatabase(
      path!,
      version: versionDB,
      onUpgrade: (db, oldVersion, newVersion) async {
        if (oldVersion != newVersion) {}
      },
      singleInstance: true,
      onOpen: (db) async {
        if (await db.getVersion() != versionDB) {
          await db.setVersion(versionDB);
        }
      },
      onCreate: (db, version) async {
        for (String table in _dbVersionsToTableNames.keys) {
          for (
            int version = 1;
            version <= _dbVersionsToTableNames[table]!.length;
            version++
          ) {
            debugPrint(_dbVersionsToTableNames[table]![version]!);
            await db.execute(_dbVersionsToTableNames[table]![version]!);
          }
        }
      },
    );
  }

// Ensure database is initialized

  void _ensureInitialized() {
    if (database == null) {
      throw DatabaseInitializationException(
        'Database not initialized. Call init() method first.',
      );
    }
  }

//CRUD Operations

  Future<void> insert(String table, Map<String, Object?> data) async {
    _ensureInitialized();
    await database!.insert(table, data);
  }

  Future<void> update(
    String table,
    Map<String, Object?> data,
    String whereClause,
    List<Object?> whereArgs,
  ) async {
    _ensureInitialized();
    await database!.update(
      table,
      data,
      where: whereClause,
      whereArgs: whereArgs,
    );
  }

  Future<void> delete(
    String table,
    String whereClause,
    List<Object?> whereArgs,
  ) async {
    _ensureInitialized();
    await database!.delete(table, where: whereClause, whereArgs: whereArgs);
  }

  Future<List<Map<String, dynamic>>> query(
    String table, {
    String? where,
    List<Object?>? whereArgs,
  }) async {
    _ensureInitialized();
    return await database!.query(table, where: where, whereArgs: whereArgs);
  }

  Future<void> close() async {
    await database?.close();
  }
}
