import 'package:flutter/material.dart';

class NameCardWidget extends StatelessWidget {
  const NameCardWidget({
    super.key,
    required this.myText,
    required TextEditingController myTextController,
  }) : _myTextController = myTextController;

  final String myText;
  final TextEditingController _myTextController;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.grey[200],
        child: Column(children: [
          Image.asset(
            'assets/coding.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            myText,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: TextField(
              controller: _myTextController,
              decoration: InputDecoration(
                  hintText: "Enter Name",
                  labelText: "Name",
                  border: OutlineInputBorder()),
            ),
          )
        ]));
  }
}