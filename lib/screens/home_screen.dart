
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      centerTitle: true,
      title:const   Text("Home Screen"),),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/page1', extra: "First Screen");
          },
          child: const Text("First Screen "),
        ),
      ),
    );
  }
}
