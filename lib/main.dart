import 'package:flutter/material.dart';
import 'package:navigator_2/router/router.dart';

void main() {
  runApp(
    MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser:getRout.routeInformationParser,
      routerDelegate: getRout.routerDelegate,
    ),
  );
}
