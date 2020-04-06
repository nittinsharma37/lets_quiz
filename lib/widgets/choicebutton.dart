import 'package:flutter/material.dart';
import 'package:letsquiz/utils/constants.dart';

Widget choiceButton(){
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 40.0,
    ),
    child: MaterialButton(
      onPressed: (){},
      child: Text("data"),
      color: color3,
      splashColor: color1,
      highlightColor: color2,
      minWidth: 200.0,
      height: 50.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),
  );
}