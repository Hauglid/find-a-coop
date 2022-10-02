import 'package:find_a_coop/core/missing_route/pages/missing_route_page.dart';
import 'package:find_a_coop/core/router/routes.dart';
import 'package:find_a_coop/features/stores/presentation/store/cubit/store_cubit.dart';
import 'package:find_a_coop/features/stores/stores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          return state.namedLocation(BaseRoutes.butikker);
        },
      ),
      GoRoute(
        name: BaseRoutes.butikker,
        path: '/${BaseRoutes.butikker}',
        pageBuilder: (context, state) {
          return MaterialPage<void>(
            key: state.pageKey,
            child: const FindACoopPage(),
          );
        },
        routes: [
          GoRoute(
            path: ':chain(marked|matkroken|mega|prix|obs|extra|byggmix|obs-bygg|elektro/store)/:store',
            pageBuilder: (context, state) {
              final String store = state.params['store']!;
              final String chain = state.params['chain']!;

              return MaterialPage<void>(
                key: state.pageKey,
                child: BlocProvider(
                  create: (context) => StoreCubit(),
                  child: StorePage(
                    store: store,
                    chain: chain,
                  ),
                ),
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
