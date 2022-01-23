import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        leading: IconButton(onPressed: (){
          context.go('/page2');
        },icon:const  Icon(Icons.arrow_back),),
        title:const  Text("third screen"),
      ),
    );
  }
}
