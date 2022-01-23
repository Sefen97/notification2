import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_2/screens/first_screen.dart';
import 'package:navigator_2/screens/home_screen.dart';
import 'package:navigator_2/screens/sacond_screen.dart';
import 'package:navigator_2/screens/third_screen.dart';

void main() {
  final _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/page1',
        builder: (context, state) => const FirstScreen(),
      ),
      GoRoute(
        path: '/page2',
        builder: (context, state) => const SacondScreen(),
      ),
      GoRoute(
        path: '/page3',
        builder: (context, state) => const ThirdScreen(),
      ),
    ],
  );
  runApp(
    MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: "/",
    ),
  );
}
