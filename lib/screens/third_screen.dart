import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  const Center(child:  Text("third screen")),
      appBar: AppBar(
        centerTitle: true,
        title:const  Text("third screen"),
      ),
    );
  }
}
