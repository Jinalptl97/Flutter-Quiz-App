import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({super.key, required this.ansertext, required this.onTap});

  final String ansertext;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
        backgroundColor: Color.fromARGB(255, 49, 34, 255),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
      ),
      
      child:  Text(ansertext,textAlign:TextAlign.center),
    );
  }
}

