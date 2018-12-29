import 'package:angular_router/angular_router.dart';
import 'package:his_client/route_paths.dart';
import 'login_component.template.dart' as login_template;

export 'package:his_client/route_paths.dart';

class Routes {
  static final login = RouteDefinition(
    routePath: RoutePaths.login,
    component: login_template.LoginComponentNgFactory,
  );
  static final signup = RouteDefinition(
    routePath: RoutePaths.signup,
    component: login_template.LoginComponentNgFactory,
  );

  static final all = <RouteDefinition>[login, signup];
}
