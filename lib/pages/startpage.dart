import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:letsquiz/pages/mainpage.dart';
import 'package:letsquiz/utils/constants.dart';
import 'package:letsquiz/utils/startclipper.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return WillPopScope(
      onWillPop: (){
        return showDialog(
          context: context,
          builder: (context){
            print("back pressed");
            return AlertDialog(
              title: Text("Let's quiz"),
              content: Text("Are you sure to exit ?"),
              actions: <Widget>[
                MaterialButton(
                  color: Colors.red,
                  child: Text("Yes"),
                  onPressed: () {
                    print("yes pressed");
                    SystemNavigator.pop();
                  }
                ),
                MaterialButton(
                  color: Colors.green,
                  child: Text("No"),
                  onPressed: (){
                    print("no pressed");
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          }
        );
      },
      child: SafeArea(
        child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ClipPath(
              clipper: StartClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height / 3.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [color1, color2, color3],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Welcome...",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 2.0),
                    ),
                    Text(
                      "         here!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Image(
                image: AssetImage("assets/welcome.png"),
                fit: BoxFit.contain,
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 20, left: 20.0, right: 20.0, bottom: 40.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
                    print("lets start pressed");
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => MainPage()
                    ));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [color1, color2, color3],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 200.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Let's Start",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 22.0),
                          ),
                          SizedBox(width: 10.0),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
    ),
      ),
    );
  }
}
