import 'package:flutter/material.dart';

class InputAdvice extends StatefulWidget {
  @override
  _InputAdviceState createState() => _InputAdviceState();
}

class _InputAdviceState extends State<InputAdvice> {
  final myController = TextEditingController();
  List<Advice> Advices = [];

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Anag",
          style: TextStyle(fontSize: 24.0),
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: myController,
            ),
          ),
          FlatButton.icon(
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  Advices.add(Advice(text: myController.text));
                });
              },
              icon: Icon(Icons.save),
              label: Text("Save"))
        ],
      ),
    );
  }
}

class Advice {
  String text;

  Advice({this.text});
}
