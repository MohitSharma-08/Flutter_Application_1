import 'package:flutter/material.dart';

class Homep extends StatelessWidget {
  const Homep ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body:Center( 
        child:Container(
          child:const Text("Welcome hii "), 
        ),
      ),
      drawer: Drawer(),
    );
  }
}