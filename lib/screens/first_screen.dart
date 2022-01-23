import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstScreen extends StatefulWidget {
  final Object name;

  const FirstScreen({Key? key, required this.name}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  context.go("/page1/page2");
                },
                child: const Text("Sacond screen")),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  context.go("/page3");
                },
                child: const Text("thirdScreen")),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  context.go("/pa");
                },
                child: const Text("Page Not Found")),
          ],
        ),
      )),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(widget.name.toString()),
      ),
    );
  }
}
