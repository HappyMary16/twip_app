import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:twip_app/ui/paintings/view_models/paintings_viewmodel.dart';

import '../ui/home/view_models/home_viewmodel.dart';
import '../ui/home/widgets/home_screen.dart';
import '../ui/paintings/widgets/paintings_screen.dart';
import '../ui/path/view_models/path_viewmodel.dart';
import '../ui/path/widgets/path_screen.dart';
import 'routes.dart';

GoRouter router() => GoRouter(
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
                  routeRepository: context.read(),
                  paintingRepository: context.read(),
                );

                viewModel.loadRout(id);
                return PathScreen(viewModel: viewModel);
              },
            ),
          ],
        ),
        GoRoute(
          path: Routes.paintings,
          builder: (context, state) {
            final viewModel = PaintingsViewModel(
              paintingRepository: context.read(),
            );
            return PaintingsScreen(viewModel: viewModel);
          },
          routes: [],
        ),
      ],
    ),
  ],
);
