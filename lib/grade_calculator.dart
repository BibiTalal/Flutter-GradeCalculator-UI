import 'package:flutter/material.dart';

class GradeCalculator extends StatelessWidget {
  GradeCalculator({Key? key}) : super(key: key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grade Calculator"), centerTitle: true),
      body: Column(children: [
        Padding(
            padding: const EdgeInsets.all(40.0),
            child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    hintText: "Type your score",
                    prefixIcon: Icon(
                      Icons.percent,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))))),
        Center(
            child: ElevatedButton(
          child: Text("Calculate"),
          onPressed: () {
            int? grade = int.tryParse(controller.text);

            if (grade! >= 90) {
              print("A");
            } else if (grade >= 80) {
              print("B");
            } else if (grade >= 70) {
              print("c");
            } else if (grade >= 60) {
              print("D");
            } else {
              print("F");
            }
          },
        ))
      ]),
    );
  }
}
