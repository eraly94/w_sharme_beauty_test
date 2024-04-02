import 'package:auto_route/auto_route.dart';
import 'package:w_sharme_beauty_test/features/auth/presentation/pages/auth/authorization_page.dart';
part "router.gr.dart";

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AuthorizationRoute.page,
          initial: true,
        ),
      ];
}
