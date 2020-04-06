import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:letsquiz/pages/mainpage.dart';
import 'package:letsquiz/utils/constants.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0)),
      child: Container(
        height: MediaQuery.of(context).size.height / (3 / 2),
        width: MediaQuery.of(context).size.width / (3 / 2),
        child: Stack(
          children: <Widget>[
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [color1.withOpacity(0.3) , color2.withOpacity(0.5), color3.withOpacity(0.5)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Container(
              child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width / 4,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/welcome.png"),
                          ),
                        ),
                      ),
                      Text(
                        "Let's Quiz",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Divider(height: 0.5, color: Colors.white,),
                      InkWell(
                        onTap: (){
                          print("Home pressed");
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainPage()));
                        },
                        child: ListTile(
                          leading: Icon(Icons.home, color: Colors.white, size: 20.0,),
                          title: Text("Home", style: TextStyle(color:  Colors.white)),
                        ),
                      ),
                      Divider(height: 0.5, color: Colors.white,),
                      InkWell(
                        onTap: (){
                          print("About  pressed");
                        },
                        child: ListTile(
                          leading: Icon(Icons.person, color: Colors.white, size: 20.0,),
                          title: Text("About me", style: TextStyle(color:  Colors.white)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
