import 'package:flutter/material.dart';

void main() => runApp(CalcApp());

class CalcApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CalcPage());
  }
}

class CalcPage extends StatefulWidget {
  @override
  _CalcPageState createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  final aCtrl = TextEditingController();
  final bCtrl = TextEditingController();
  String op = "+";
  String result = "";

  void calc() {
    double a = double.tryParse(aCtrl.text) ?? 0;
    double b = double.tryParse(bCtrl.text) ?? 0;

    switch (op) {
      case "+":
        result = "${a + b}";
        break;
      case "-":
        result = "${a - b}";
        break;
      case "*":
        result = "${a * b}";
        break;
      case "/":
        result = b == 0 ? "Error: division by zero!" : "${a / b}";
        break;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: aCtrl, decoration: InputDecoration(labelText: "First number")),
            TextField(controller: bCtrl, decoration: InputDecoration(labelText: "Second number")),
            DropdownButton(
              value: op,
              items: ["+", "-", "*", "/"].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
              onChanged: (v) => setState(() => op = v!),
            ),
            ElevatedButton(onPressed: calc, child: Text("Calculate")),
            SizedBox(height: 20),
            Text("Result: $result", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
