import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            padding : EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Mohit Sharma"),
                accountEmail: Text("Mohit@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  // backgroundImage: AssetImage("assets/images/profile_pic.png"),
                ),
              ),  
            ),
            
            ListTile(
              leading: Icon(CupertinoIcons.home , color: Colors.black,),
              title: Text("Home" , 
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.black
                ),
              ),
            ),

            ListTile(
              leading: Icon(CupertinoIcons.profile_circled , color: Colors.black,),
              title: Text("Profile" , 
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.black
                ),
              ),
            ),

            ListTile(
              leading: Icon(CupertinoIcons.mail , color: Colors.black,),
              title: Text("Email Me" , 
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.black
                ),
              ),
            ),

        ],
      ),
    );
  }
}