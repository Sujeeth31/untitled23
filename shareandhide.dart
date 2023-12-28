import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( home: MyHomePage(),));
}

class MyHomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Educative Answers'),),
        body: Container(
            child: Column(
              children: <Widget>[
                Visibility(
                  visible: isVisible,
                  child: Image.asset("assets/Educative.png",
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 35,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20),
                      minimumSize: Size.fromHeight(50),
                    ),
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    child: Text("Show/Hide")
                ),
              ],
            )
        ),
      ),
    );
  }
}