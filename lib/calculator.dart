import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  Widget numButton(String btnText, Color btnColor, Color textColor) {
    return ElevatedButton(
      onPressed: () => {},
      style: ElevatedButton.styleFrom(
        fixedSize: Size(70, 70),
        shape: CircleBorder(),
        primary: btnColor,
      ),
      child: Text(
        btnText,
        style: TextStyle(fontSize: 25, color: textColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Calculator',
         style: TextStyle(color: Colors.white, fontSize: 40),),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "0",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 80),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numButton("C", Colors.grey, Colors.black),
                numButton("+/-", Colors.grey, Colors.black),
                numButton("%", Colors.grey, Colors.black),
                numButton("/", Colors.orange, Colors.black),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numButton("7", (Colors.grey[850])!, Colors.white),
                numButton("8", (Colors.grey[850])!, Colors.white),
                numButton("9", (Colors.grey[850])!, Colors.white),
                numButton("*", Colors.orange, Colors.black),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               numButton("7", (Colors.grey[850])!, Colors.white),
                numButton("8", (Colors.grey[850])!, Colors.white),
                numButton("9", (Colors.grey[850])!, Colors.white),
                numButton("-", Colors.orange, Colors.black),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numButton("7", (Colors.grey[850])!, Colors.white),
                numButton("8", (Colors.grey[850])!, Colors.white),
                numButton("9", (Colors.grey[850])!, Colors.white),
                numButton("+", Colors.orange, Colors.black),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary:(Colors.grey[850]),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(28, 12, 90, 12),
                    child: Text(
                      "0",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                ),
                numButton(".", (Colors.grey[850])!, Colors.white),
                numButton("=", (Colors.orange), Colors.white),
                
              ],
              
            ),
            SizedBox(height: 20),
            
          ],
        ),
      ),
    );
  }
}
