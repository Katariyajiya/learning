
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rounded_button extends StatelessWidget{
  final String btName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  rounded_button({
    required this.btName,
    this.icon,
    this.bgColor,
    this.textStyle,
    this.callback,

});

  @override
  Widget build(BuildContext context) {
   return ElevatedButton(
       onPressed: (){
         callback!();
       },
       child: icon!=null ?  Row(

   ) : Text(btName,style: textStyle,));
  }

}