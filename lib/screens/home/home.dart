import 'package:anag/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:anag/screens/home/Feed/inputadvice.dart';
import 'package:anag/screens/home/Feed/adviceCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Advice> Advices = [Advice(text: "Welcome")];
  Choice _selectedChoice = choices[0]; // The app's "state".

  final AuthService _auth = AuthService();

  void _select(Choice choice) {
    // Causes the app to rebuild with the new _selectedChoice.
    setState(() {
      _selectedChoice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Anag",
          style: TextStyle(fontSize: 24.0),
        ),
        actions: <Widget>[
          FlatButton.icon(
              icon: Icon(Icons.person),
              label:Text("Logout"),
              onPressed:() async {
                await _auth.signOut();
              }),
          PopupMenuButton<Choice>(
              onSelected: _select,
              icon: Icon(Icons.language),
              itemBuilder: (BuildContext context) {
                return choices.map((Choice choice) {
                  return PopupMenuItem<Choice>(
                    value: choice,
                    child: Text(choice.title),
                  );
                }).toList();
              })
        ],
        elevation: 0.0,
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/inputadvice');
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        children: Advices.map((advice) => AdviceCard(
              advice: advice,
            )).toList(),
      ),
    );
  }
}

const List<Choice> choices = const <Choice>[
  const Choice(
    title: 'English',
  ),
  const Choice(
    title: 'Hindi',
  ),
  const Choice(
    title: 'Telugu',
  ),
  const Choice(
    title: 'Tamil',
  ),
  const Choice(
    title: 'Kannada',
  ),
];

class Choice {
  const Choice({this.title});

  final String title;
}
