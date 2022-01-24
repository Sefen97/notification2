import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_2/router/const_rout.dart';
import 'package:navigator_2/screens/first_screen.dart';
import 'package:navigator_2/screens/home_screen.dart';
import 'package:navigator_2/screens/sacond_screen.dart';
import 'package:navigator_2/screens/third_screen.dart';



GoRouter getRout = GoRouter(
    errorPageBuilder: (context, state) =>  MaterialPage(
        child: Scaffold(
          appBar: AppBar(),
      body: const Center(
        child: Text("Please close your page and tray agin"),
      ),
    )),
    initialLocation: homeScreen,
    routes: [
      GoRoute(
        name: homeScreen,
        path: homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        name: firstScreen,
          path: firstScreen,
          builder: (context, state) => FirstScreen(
              name: state.extra != null ? state.extra! : "First Screen"),

      ),
      GoRoute(
        name: sacondScreen,
        path: sacondScreen,
        builder: (context, state) => const SacondScreen(),
      ),
      GoRoute(
        name: thirdScreen,
        path: thirdScreen,
        builder: (context, state) => const ThirdScreen(),
      ),
    ],
  );

