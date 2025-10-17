import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:twip_app/ui/paintings/view_models/paintings_viewmodel.dart';
import 'package:twip_app/ui/settings/settings_view_model.dart';

import '../ui/addpath/addpath_screen.dart';
import '../ui/addpath/addpath_viewmodel.dart';
import '../ui/home/view_models/home_viewmodel.dart';
import '../ui/home/widgets/home_screen.dart';
import '../ui/paintings/widgets/paintings_screen.dart';
import '../ui/path/view_models/path_viewmodel.dart';
import '../ui/path/widgets/path_screen.dart';
import '../ui/settings/settings_widget.dart';
import 'routes.dart';

GoRouter? currentRouter;

GoRouter router() {
  if (currentRouter != null) {
    return currentRouter as GoRouter;
  }

  currentRouter = GoRouter(
    initialLocation: Routes.home,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (context, state) {
          final viewModel = HomeViewModel(routeRepository: context.read());
          return HomeScreen(viewModel: viewModel);
        },
        routes: [
          GoRoute(
            path: Routes.routes,
            builder: (context, state) {
              final viewModel = HomeViewModel(routeRepository: context.read());
              return HomeScreen(viewModel: viewModel);
            },
            routes: [
              GoRoute(
                path: ':id',
                builder: (context, state) {
                  final id = int.parse(state.pathParameters['id']!);
                  final viewModel = PathViewModel(
                    pathRepository: context.read(),
                    paintingRepository: context.read(),
                  );

                  viewModel.loadRout(id);
                  return PathScreen(viewModel: viewModel);
                },
              ),
            ],
          ),
          GoRoute(
            path: Routes.newRoute,
            builder: (context, state) {
              final viewModel = AddPathViewModel(
                routeRepository: context.read(),
                paintingRepository: context.read(),
              );

              viewModel.loadPaintings();
              return AddPathScreen(viewModel: viewModel);
            },
          ),
          GoRoute(
            path: Routes.paintings,
            builder: (context, state) {
              final viewModel = PaintingsViewModel(
                paintingRepository: context.read(),
              );
              viewModel.loadPaintings();
              return PaintingsScreen(viewModel: viewModel);
            },
            routes: [],
          ),
          GoRoute(
            path: Routes.settings,
            builder: (context, state) {
              final viewModel = SettingsViewModel(context.read());
              viewModel.load();
              return SettingsWidget(viewModel: viewModel);
            },
            routes: [],
          ),
        ],
      ),
    ],
  );

  return currentRouter as GoRouter;
}
