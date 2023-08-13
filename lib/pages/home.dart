import 'package:flutter/material.dart';
import 'package:calculator/neu_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userInput = "";
  String result = "0";
  List<String> buttonList = [
    "AC",
    "(",
    ")",
    "/",
    "7",
    "8",
    "9",
    "*",
    "4",
    "5",
    "6",
    "+",
    "1",
    "2",
    "3",
    "-",
    "c",
    "0",
    ".",
    "=",
  ];
  Widget _buildCalculatorButton(String label) {
  return NeuBox(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        label,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1d2630), 
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //userInput display section
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.centerRight,
                child: Text(
                  userInput,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              //Result Display section
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.centerRight,
                child: Text(
                  result,
                  style: TextStyle(
                    fontSize: 59,
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(color: Colors.black),
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.centerRight,

              ),  
              Row(
                children: [
                  _buildCalculatorButton("AC"),
                  _buildCalculatorButton("("),
                  _buildCalculatorButton(")"),
                  _buildCalculatorButton("/")
                ],
              ),
              Row(
                children: [
                  _buildCalculatorButton("7"),
                  _buildCalculatorButton("8"),
                  _buildCalculatorButton("9"),
                  _buildCalculatorButton("*"),
                ],
              ),
              Row(
                children: [
                  _buildCalculatorButton("4"),
                  _buildCalculatorButton("5"),
                  _buildCalculatorButton("6"),
                  _buildCalculatorButton("+"),
                ],
              ),
              Row(
                children: [
                  _buildCalculatorButton("1"),
                  _buildCalculatorButton("2"),
                  _buildCalculatorButton("3"),
                  _buildCalculatorButton("-"),
                ],
              ),
              Row(
                children: [
                  _buildCalculatorButton("C"),
                  _buildCalculatorButton("0"),
                  _buildCalculatorButton("."),
                  _buildCalculatorButton("="),
                ],
              ),
            ],
          ),
        )
      )
    );
  }
}
