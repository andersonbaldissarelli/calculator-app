import 'package:flutter/material.dart';

class ViewWidget extends StatelessWidget {
  final operation;
  const ViewWidget({Key? key, required this.operation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.blue.shade700,
        ),
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.topRight,
          colors: [
            Colors.black,
            Colors.lightBlue.shade800,
          ],
        ),
      ),
      alignment: Alignment.bottomRight,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.6,
      //color: Colors.black,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 20, 20),
        child: Text(
          operation,
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
