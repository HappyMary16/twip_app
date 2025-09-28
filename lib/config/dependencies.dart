import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:twip_app/data/repositories/painting_repository.dart';
import 'package:twip_app/data/repositories/path_repository.dart';
import 'package:twip_app/data/services/api_service.dart';

List<SingleChildWidget> get providers {
  return [
    Provider(create: (context) => ApiService()),
    Provider(create: (context) => PathRepository()),
    Provider(create: (context) => PaintingRepository(apiService: context.read())),
  ];
}
