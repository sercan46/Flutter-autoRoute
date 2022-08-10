import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/dashboard/settings/settings_view.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isResult = false;
    if (isResult) {
      resolver.next(true);
    } else {
      router.pushWidget(SettingView());
    }
  }
}
