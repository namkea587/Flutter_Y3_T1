import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Bottom Custom")),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelecteButtom(),
            SizedBox(height: 20),
            SelecteButtom(),
            SizedBox(height: 20),
            SelecteButtom(),
            SizedBox(height: 20),
            SelecteButtom(),
          ],
        ),
      ),
    ),
  );
}

class SelecteButtom extends StatefulWidget {
  const SelecteButtom({super.key});

  @override
  State<SelecteButtom> createState() => _SelecteButtonState();
}

class _SelecteButtonState extends State<SelecteButtom> {
  bool isSelected = false;
  String get textLabel => isSelected ? "selected" : "notSelected";
  Color get textColor => isSelected ? Colors.white : Colors.black;
  Color get backgroundColor => isSelected ? Colors.blue : Colors.white;

  void onButtomPressed() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Center(
      child: SizedBox(
        width: 500,
        height: 100,
        child: ElevatedButton(
          onPressed: onButtomPressed,
          style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
          child: Center(
            child: Text(textLabel, style: TextStyle(color: textColor)),
          ),
        ),
      ),
    );
  }
}
