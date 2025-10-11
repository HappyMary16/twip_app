abstract final class Routes {
  static const home = '/';
  static const routes = '/routes';
  static const newRoute = '/newRoute';
  static const paintings = '/paintings';

  static String routeWithId(int id) => '$routes/$id';

  static String editRoute(int id) => '$routes/$id/edit';
}
