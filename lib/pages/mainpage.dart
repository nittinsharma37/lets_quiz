import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:letsquiz/utils/constants.dart';
import 'package:letsquiz/utils/drawer.dart';
import 'package:letsquiz/widgets/card.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return WillPopScope(
      onWillPop: () {
        return showDialog(
            context: context,
            builder: (context) {
              print("Back pressed");
              return AlertDialog(
                title: Text("Let's quiz"),
                content: Text("Are you sure to exit ?"),
                actions: <Widget>[
                  MaterialButton(
                      color: Colors.red,
                      child: Text("Yes"),
                      onPressed: () {
                        SystemNavigator.pop();
                      }),
                  MaterialButton(
                    color: Colors.green,
                    child: Text("No"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            });
      },
      child: SafeArea(
        child: Scaffold(
          //drawer: CustomDrawer(),
          appBar: AppBar(
            title: Text("Let's Quiz"),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.more_vert, size: 30.0, color: Colors.white,),

              ),
            ],
            flexibleSpace: Material(
              elevation: 5.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    color1,
                    color2,
                    color3,
                  ]),
                ),
              ),
            ),
          ),
          body: ListView(
            children: <Widget>[
              CustomCard(),
              CustomCard(),
            ],
          ),
        ),
      ),
    );
  }
}
