import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:letsquiz/utils/constants.dart';
import 'package:letsquiz/widgets/choicebutton.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return WillPopScope(
      onWillPop: () {
        Scaffold.of(context).showSnackBar(
           SnackBar(content: Text("cvnoagfd "))
    );
    return Future.value(true);
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            //leading: Container(),
            title: Text("Let's Quiz"),
            centerTitle: true,
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
          body: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.green,
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      choiceButton(),
                      choiceButton(),
                    ],
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
