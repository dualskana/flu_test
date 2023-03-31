import 'home_routes.dart';
import 'login_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = '/home';

  static final routes = [
    ...HomeRoutes.routes,
		...LoginRoutes.routes,
  ];
}
