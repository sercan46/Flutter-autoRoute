import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/dashboard/dashboard_view.dart';
import 'package:auto_route_example/dashboard/settings/settings_view.dart';
import 'package:auto_route_example/dashboard/user/model/user_model.dart';
import 'package:auto_route_example/dashboard/user/user_detail_view.dart';
import 'package:auto_route_example/dashboard/user/user_view.dart';
import 'package:auto_route_example/home/home_detail_view.dart';
import 'package:auto_route_example/home/home_view.dart';
import 'package:auto_route_example/product/navigator/guard/app_guard.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeView, path: 'home', initial: true),
    AutoRoute(guards: [AuthGuard], page: HomeDetailView, path: 'detail'),
    AutoRoute(page: DashboardView, children: [
      AutoRoute(
          page: EmptyPageRouter,
          name: 'UserFullRoute',
          maintainState: true,
          path: 'empty',
          children: [
            AutoRoute(page: UserView, initial: true, path: 'user'),
            AutoRoute(page: UserDetailView, path: ':id'),
          ]),
      AutoRoute(page: SettingView, path: 'settings'),
    ])
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({required super.authGuard});
}

class EmptyPageRouter extends AutoRouter {
  const EmptyPageRouter({super.key});
}
