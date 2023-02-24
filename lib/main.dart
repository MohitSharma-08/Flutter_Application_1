import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';


void main() => runApp (first_application_1());

class first_application_1 extends StatelessWidget{

  const first_application_1({Key? key}) :super (key: key);
  

  @override 
  Widget build(BuildContext context ){
    
    return MaterialApp(
      themeMode: ThemeMode.light,
      
      theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
      

      debugShowCheckedModeBanner: false,

      initialRoute: MyRoutes.HomeRoute,
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.HomeRoute: (context) => Homep(),
        MyRoutes.LoginRoute: (context) => LoginPage(),
      },

    );
  }
} 