import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  StackExample({Key? key}) : super(key: key);
  Widget textEXmaple(
      {String name: '', double fsize: 0, Color color: Colors.red}) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          name,
          style: TextStyle(
              fontSize: fsize, fontWeight: FontWeight.bold, color: color),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textEXmaple(name: "nabahuu", fsize: 12, color: Colors.blue),
        textEXmaple(name: "nabahuu2", fsize: 13, color: Colors.green),
        textEXmaple(name: "nabahuu3", fsize: 15, color: Colors.black87)
      ],
    );
  }
}
