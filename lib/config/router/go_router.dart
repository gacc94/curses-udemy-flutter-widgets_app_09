import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app_09/presentation/screens/screens.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  navigatorKey: GlobalKey<NavigatorState>(),
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
      // pageBuilder: (context, state) => CustomTransitionPage(
      //   // key: state.pageKey,
      //   child: const ButtonsScreen(),
      //   transitionsBuilder: (context, animation, secondaryAnimation, child) {
      //     if (Theme.of(context).platform == TargetPlatform.iOS) {
      //       return SlideTransition(
      //         position: Tween(
      //           begin: const Offset(1, 0),
      //           end: Offset.zero,
      //         ).animate(animation),
      //         child: child,
      //       );
      //     } else {
      //       return FadeTransition(opacity: animation, child: child);
      //     }
      //   },
      // ),
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),
  ],
);
