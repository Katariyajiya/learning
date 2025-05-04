
import 'package:flutter/material.dart' as flutter;
import 'package:flutter/material.dart';

TextStyle mTextStyle({

  Color textColor =Colors.black,
  FontWeight fontWeight =FontWeight.normal
})
{
  return TextStyle(
    fontSize:11,
    color: textColor,
    fontWeight: fontWeight
    //fontWeight:FontWeight.w300,
  );
}