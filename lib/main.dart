import 'package:flutter/material.dart';
import 'package:tasbih/azkar.dart';

void main() {
  runApp( Tasbih());
}
class Tasbih extends StatelessWidget {
  const Tasbih({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Azkar(),
    );
  }
}





