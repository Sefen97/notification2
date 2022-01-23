import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        leading: IconButton(onPressed: (){
          context.go('/page1');
        },icon:const  Icon(Icons.arrow_back),),
        title:const  Text("seconds Screen"),
      ),
    );
  }
}
