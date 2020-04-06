import 'package:flutter/material.dart';
import 'package:letsquiz/pages/questionpage.dart';
import 'package:letsquiz/utils/constants.dart';
class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: EdgeInsets.all(10.0),
    child: InkWell(
      onTap: () {
        print("Card pressed");
        Navigator.push(context, MaterialPageRoute(
          builder: (context){
            return QuestionPage();
          }
        ));
      },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(colors: [
              color1.withOpacity(0.4),
              color2.withOpacity(0.4),
              color3.withOpacity(0.4),
            ]),
          ),
          height: 200.0,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 50.0,
                  child: Icon(
                    Icons.computer,
                    size: 50.0,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Basic Computers",
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "A quiz to check your basic computer knowledge.",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                    maxLines: 3,
                    textAlign: TextAlign.justify,
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
