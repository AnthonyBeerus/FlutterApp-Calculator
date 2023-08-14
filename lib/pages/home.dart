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
      backgroundColor: Colors.transparent,

       
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[Color(0xFFFEACDA3), Color(0xFFFD6AE7B)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //userInput display section
                Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerRight,
                  child: Text(
                    userInput,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                //Result Display section
                Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerRight,
                  child: Text(
                    result,
                    style: TextStyle(
                      fontSize: 59,
                      color: Colors.black,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,  
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(3),
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: buttonList.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return _buildCalculatorButton(buttonList[index]);
                      },
                    ),
                  ),
                ),  
              ],
            ),
          )
        ),
      )
    );
  }
}
