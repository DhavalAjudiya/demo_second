import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _chosevalue;
  String? dropdown = "dhaval";

  var items = ["mba", "bba", "m.com", "b.com", "bca"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton<String>(
            value: dropdown,
            items: items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: new Text(value),
              );
            }).toList(),
            // hint: Text("Chose value"),
            onChanged: (value) {
              setState(() {
                dropdown = value!;
              });
            },
          ),
          DropdownButton<String>(
            value: _chosevalue,
            elevation: 5,
            icon: Icon(Icons.keyboard_arrow_down),
            style: TextStyle(color: Colors.black),
            items: <String>[
              'Android',
              'IOS',
              'Flutter',
              'Node',
              'Java',
              'Python',
              'PHP',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            hint: Text(
              "Please choose a langauage",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            onChanged: (value) {
              setState(() {
                _chosevalue = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
