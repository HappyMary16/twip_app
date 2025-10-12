import '../../../domain/models/path/path.dart';

/// Репозиторій, який описує інтерфейс для роботи з моделями Path.
/// Він реалізується двома класами:
/// PathRepositoryMemory - зберігає дані в оперативній памʼяті
/// PathRepositoryStore - зберігає дані в SQLite
///
/// додаток можна запускати з використанням будь-якого з них.
/// Конфігурації з якими можна запускати додаток знаходяться в config/dependencies.dart
/// В файлі main.dart в main ми вказуємо з якою з конфігурацій ми хочемо запустити додаток.
abstract class PathRepository {
  Future<List<Path>> getPaths();
  Future<Path> getById(int id);
  Future<void> deletePath(int id);
  Future<void> addPath(Path path);
}