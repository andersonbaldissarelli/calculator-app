import 'package:calculator/shared/widgets/button_side2_widget.dart';
import 'package:calculator/shared/widgets/button_side3_widget.dart';
import 'package:calculator/shared/widgets/button_side4_widget.dart';
import 'package:calculator/shared/widgets/button_side_widget.dart';
import 'package:calculator/shared/widgets/button_widget.dart';
import 'package:calculator/shared/widgets/controller/home_controller.dart';
import 'package:calculator/shared/widgets/view.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final homecontroller = HomeController();

  var operation = "";
  var result = 0.0;
  var a;
  var b;
  var currentOp;
  var op = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ViewWidget(operation: operation),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.9,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.blue.shade700,
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(44),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                op = 'AC';
                                if ('AC' == '=') {
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '*', '/');
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '-', '+');
                                } else {
                                  operation += 'AC';
                                }
                                result = 0.0;
                                operation = "";
                                setState(() {});
                              },
                              child: ButtonSideWidget(value: 'AC')),
                          GestureDetector(
                              onTap: () {
                                if ('+' == '=') {
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '*', '/');
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '-', '+');
                                } else {
                                  operation += '+';
                                }
                                setState(() {});
                              },
                              child: ButtonWidget(value: '+')),
                          GestureDetector(
                              onTap: () {
                                if ('-' == '=') {
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '*', '/');
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '-', '+');
                                } else {
                                  operation += '-';
                                }
                                setState(() {});
                              },
                              child: ButtonSide2Widget(value: '-')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                if ('1' == '=') {
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '*', '/');
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '-', '+');
                                } else {
                                  operation += '1';
                                }
                                setState(() {});
                              },
                              child: ButtonWidget(value: '1')),
                          GestureDetector(
                              onTap: () {
                                if ('2' == '=') {
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '*', '/');
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '-', '+');
                                } else {
                                  operation += '2';
                                }
                                setState(() {});
                              },
                              child: ButtonWidget(value: '2')),
                          GestureDetector(
                              onTap: () {
                                if ('3' == '=') {
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '*', '/');
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '-', '+');
                                } else {
                                  operation += '3';
                                }
                                setState(() {});
                              },
                              child: ButtonWidget(value: '3')),
                          GestureDetector(
                              onTap: () {
                                if ('/' == '=') {
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '*', '/');
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '-', '+');
                                } else {
                                  operation += '/';
                                }
                                setState(() {});
                              },
                              child: ButtonWidget(value: '/')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                if ('4' == '=') {
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '*', '/');
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '-', '+');
                                } else {
                                  operation += '4';
                                }
                                setState(() {});
                              },
                              child: ButtonWidget(value: '4')),
                          GestureDetector(
                              onTap: () {
                                if ('5' == '=') {
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '*', '/');
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '-', '+');
                                } else {
                                  operation += '5';
                                }
                                setState(() {});
                              },
                              child: ButtonWidget(value: '5')),
                          GestureDetector(
                              onTap: () {
                                if ('6' == '=') {
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '*', '/');
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '-', '+');
                                } else {
                                  operation += '6';
                                }
                                setState(() {});
                              },
                              child: ButtonWidget(value: '6')),
                          GestureDetector(
                              onTap: () {
                                if ('*' == '=') {
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '*', '/');
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '-', '+');
                                } else {
                                  operation += '*';
                                }
                                setState(() {});
                              },
                              child: ButtonWidget(value: '*')),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                if ('7' == '=') {
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '*', '/');
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '-', '+');
                                } else {
                                  operation += '7';
                                }
                                setState(() {});
                              },
                              child: ButtonWidget(value: '7')),
                          GestureDetector(
                              onTap: () {
                                if ('8' == '=') {
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '*', '/');
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '-', '+');
                                } else {
                                  operation += '8';
                                }
                                setState(() {});
                              },
                              child: ButtonWidget(value: '8')),
                          GestureDetector(
                              onTap: () {
                                if ('9' == '=') {
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '*', '/');
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '-', '+');
                                } else {
                                  operation += '9';
                                }
                                setState(() {});
                              },
                              child: ButtonWidget(value: '9')),
                          GestureDetector(
                              onTap: () {
                                if ('.' == '=') {
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '*', '/');
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '-', '+');
                                } else {
                                  operation += '.';
                                }
                                setState(() {});
                              },
                              child: ButtonWidget(value: '.')),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                if ('0' == '=') {
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '*', '/');
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '-', '+');
                                } else {
                                  operation += '0';
                                }
                                setState(() {});
                              },
                              child: ButtonSide3Widget(value: '0')),
                          GestureDetector(
                              onTap: () {
                                if ('=' == '=') {
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '*', '/');
                                  operation = homecontroller
                                      .separatesFunctionIntoSmallerFunctions(
                                          operation, '-', '+');
                                } else {
                                  operation += '=';
                                }
                                setState(() {});
                              },
                              child: ButtonSide4Widget(value: '=')),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
