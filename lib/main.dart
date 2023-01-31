import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp (first_application_1());

class first_application_1 extends StatelessWidget{
  const first_application_1({Key? key}) :super (key: key);

  @override 
  Widget build(BuildContext context ){
    
    return MaterialApp(
      themeMode: ThemeMode.light,
      
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      
      darkTheme: ThemeData(brightness: Brightness.dark),
      
      //initialRoute: "/Home",
      routes: {
        "/":(context) => LoginPage(),
        "/Home":(context) => Homep(),
        "/login":(context) => LoginPage(),
      },

    );
  }
} 