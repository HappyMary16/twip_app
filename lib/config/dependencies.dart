import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:twip_app/data/repositories/db/path_provider.dart';
import 'package:twip_app/data/repositories/painting_repository.dart';
import 'package:twip_app/data/repositories/path/path_repository.dart';
import 'package:twip_app/data/repositories/path/path_repository_memory.dart';
import 'package:twip_app/data/repositories/path/path_repository_store.dart';
import 'package:twip_app/data/services/api_service.dart';

List<SingleChildWidget> get providers {
  return [
    Provider(create: (context) => ApiService()),
    Provider(create: (context) => PathProvider()),
    Provider(create: (context) => PathRepositoryStore(pathProvider: context.read()) as PathRepository),
    Provider(create: (context) => PaintingRepository(apiService: context.read())),
  ];
}

List<SingleChildWidget> get testProviders {
  return [
    Provider(create: (context) => ApiService()),
    Provider(create: (context) => PathRepositoryMemory() as PathRepository),
    Provider(create: (context) => PaintingRepository(apiService: context.read())),
  ];
}
