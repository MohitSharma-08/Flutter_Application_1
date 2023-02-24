import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class Homep extends StatelessWidget {
  const Homep ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text("Catalog App" , style: TextStyle(color : Colors.black),),

      ),
      body:Center( 
        child:Container(
          child: Text("Welcome hii "), 
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}