import 'package:flutter/material.dart';

class SacondScreen extends StatefulWidget {
  const SacondScreen({Key? key}) : super(key: key);

  @override
  _SacondScreenState createState() => _SacondScreenState();
}

class _SacondScreenState extends State<SacondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  const Center(child:  Text("Secondo screen")),
      appBar: AppBar(
        centerTitle: true,
        title:const  Text("seconds Screen"),
      ),
    );
  }
}
