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
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors:[Color(0xFFFEACDA3), Color(0xFFFD6AE7B)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //userInput display section
                Container(
                  padding: EdgeInsets.all(screenWidth * 0.15),
                  alignment: Alignment.centerRight,
                  child: Text(
                    userInput,
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                //Result Display section
                Container(
                  padding: EdgeInsets.all(screenWidth * 0.15),
                  alignment: Alignment.centerRight,
                  child: Text(
                    result,
                    style: const TextStyle(
                      fontSize: 59,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.black,  
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
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
