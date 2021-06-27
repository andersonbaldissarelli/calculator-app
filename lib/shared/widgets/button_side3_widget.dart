import 'package:flutter/material.dart';

class ButtonSide3Widget extends StatelessWidget {
  final value;
  const ButtonSide3Widget({Key? key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
        ),
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.topRight,
          colors: [
            Colors.black,
            Colors.lightBlue.shade800,
          ],
        ),
      ),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width / 2.1,
      height: MediaQuery.of(context).size.width / 6,
      //color: Colors.grey.shade600,
      child: Text(
        value,
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
