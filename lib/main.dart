import 'package:flutter/material.dart';


void main() => runApp (first_application_1());


class first_application_1 extends StatelessWidget{
  const first_application_1({Key? key}) :super (key: key);

  @override 
  Widget build(BuildContext context ){
    return MaterialApp(
      home:Material (
        child:Center( 
            child: Container(
              child:const Text("Welcome hii"),
            ),
          ),
        ),
      );
  }
} 