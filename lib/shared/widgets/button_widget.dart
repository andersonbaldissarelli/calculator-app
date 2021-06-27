import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final value;
  const ButtonWidget({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
      width: MediaQuery.of(context).size.width / 4.2,
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
