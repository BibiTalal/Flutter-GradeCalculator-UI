import 'package:flutter/material.dart';

class GradeCalculator extends StatefulWidget {
  const GradeCalculator({super.key});

  @override
  State<GradeCalculator> createState() => _GradeCalculatorState();
}

class _GradeCalculatorState extends State<GradeCalculator> {
  final mycontroller = TextEditingController();

  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: const Text("Grade Calculator"), centerTitle: true),
        body: Column(children: [
          Padding(
              padding: const EdgeInsets.all(40.0),
              child: TextField(
                  controller: mycontroller,
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
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
                  onPressed: () {
                    setState(() {
                      int? grade = int.tryParse(mycontroller.text);

                      if (grade == null) {
                        print("'${mycontroller.text}' is not a valid grade %");
                        String result;
                        return;
                      }

                      if (grade >= 90) {
                        result = "A";
                      } else if (grade >= 80) {
                        result = "B";
                      } else if (grade >= 70) {
                        result = "c";
                      } else if (grade >= 60) {
                        result = "D";
                      } else {
                        result = "F";
                      }
                    });
                  })),
          Expanded(
              child: Center(
            child: Text(
              result,
              style: TextStyle(
                  fontSize: 139,
                  color: Color.fromARGB(255, 244, 112, 156),
                  fontWeight: FontWeight.bold),
            ),
          ))
        ]));
  }
}
