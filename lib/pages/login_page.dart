import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
 
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String  name="";
  bool loginButton = false;

  final _formKey = GlobalKey<FormState>();  

  moveToHome(BuildContext context) async{
    if (_formKey.currentState!.validate()){
    setState(() {
        loginButton = true;
      });
                  
        await Future.delayed(Duration(seconds: 1));
        await Navigator.pushNamed(context, MyRoutes.HomeRoute);
    
    setState(() {
        loginButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,

          child: Column
          (
            children: 
            [
              Image.asset(
                "assets/images/login_image.png",
                 fit:BoxFit.cover,
              ), 
              
              Text("Welcome $name", 
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric( vertical:16.0 ,horizontal:32.0),
                child: Column(children: 
                  [TextFormField(
                    decoration : InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    
                    validator: (value) {
                      if( value == null ){
                        return "Username Cannot be Empty";
                      }

                      return null;
                    },

                    onChanged: (value){
                      name = value;
                    setState(() {});
                    },
                  ),  
          
                  TextFormField(
                    obscureText: true,
                    decoration : InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),

                    validator: (value) {
                      if( value == null ){
                        return "Password Cannot be Empty";
                      }
                      
                      else if(value.length<=8)
                        return "Password should be atleast 8 characters";
                      
                      return null;
                    },

                  ),
              
                  const SizedBox(
                height: 40
                  ), 
                  
                  Material(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(loginButton ? 50 :8),
        
                    child: InkWell(
                      onTap: () => moveToHome(context),
                      
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: loginButton ? 50 :150,
                        height: 50,
                        
                        alignment: Alignment.center,
                        child: loginButton ? Icon(Icons.done,color: Colors.white,) : Text ("Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                       
                          ),
                      ),
                    ),
                  
        
                ],
                ),
              )  
           
            ],
          ),
        ),
      )
    );
  }
}