import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_2/screens/first_screen.dart';
import 'package:navigator_2/screens/home_screen.dart';
import 'package:navigator_2/screens/sacond_screen.dart';
import 'package:navigator_2/screens/third_screen.dart';

getRout() {
  final router = GoRouter(
    errorPageBuilder: (context, state) => const MaterialPage(
        child: Scaffold(
      body: Center(
        child: Text("Please Reload Your Page We Are Sorry"),
      ),
    )),
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/page1',
        builder: (context, state) => FirstScreen(
            name: state.extra != null ? state.extra! : "First Screen"),
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
  return router;
}
