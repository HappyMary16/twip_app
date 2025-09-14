import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:twip_app/ui/route/view_models/route_viewmodel.dart';

import '../ui/home/view_models/home_viewmodel.dart';
import '../ui/home/widgets/home_screen.dart';
import '../ui/route/widgets/route_screen.dart';
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
                final viewModel = RouteViewModel(
                  routeRepository: context.read(),
                  paintingRepository: context.read(),
                );

                // When opening the booking screen with an existing id
                // load and display that booking.
                viewModel.loadRout(id);

                return RouteScreen(viewModel: viewModel);
              },
            ),
          ],
        ),
        GoRoute(
          path: Routes.paintings,
          builder: (context, state) {
            final viewModel = HomeViewModel(routeRepository: context.read());
            return HomeScreen(viewModel: viewModel);
          },
          routes: [],
        ),
      ],
    ),
  ],
);
