import 'package:find_a_coop/core/router/routes.dart';
import 'package:find_a_coop/pages/find_a_coop/view/find_a_coop_page.dart';
import 'package:find_a_coop/pages/missing_route/pages/missing_route_page.dart';
import 'package:find_a_coop/pages/shop/shop.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyRouter {
  MyRouter();

  late final router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: BaseRoutes.root,
        path: '/',
        redirect: (context, state) {
          return state.namedLocation(BaseRoutes.home);
        },
      ),
      GoRoute(
        name: BaseRoutes.home,
        path: '/home',
        pageBuilder: (context, state) {
          return MaterialPage<void>(
            key: state.pageKey,
            child: const FindACoopPage(),
          );
        },
        routes: [
          GoRoute(
            name: BaseRoutes.shop,
            path: BaseRoutes.shop,
            pageBuilder: (context, state) {
              return MaterialPage<void>(
                key: state.pageKey,
                child: const ShopPage(),
              );
            },
          ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      child: MissingRoutePage(error: state.error),
    ),
  );
}
