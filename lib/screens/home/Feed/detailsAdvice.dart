import 'package:flutter/material.dart';

class DetailsAdvice extends StatefulWidget {
  @override
  _DetailsAdviceState createState() => _DetailsAdviceState();
}

class _DetailsAdviceState extends State<DetailsAdvice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
        appBar: AppBar(
          title: Text(
            "Anag",
            style: TextStyle(fontSize: 24.0),
          ),
          elevation: 0.0,
        ),
        body: Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(

              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(),
                    SizedBox(width: 10.0,),
                    Text("Details",style: TextStyle(fontSize: 20.0),),
                  ],
                ),
                SizedBox(height: 20.0,),
                Text(
                    "For a Terminal-savvy person, the Ubuntu command line has a solution to all the administrative and configuration related problems. In fact, the command line gives greater control to a Ubuntu admin to make/view minute configuration details.",
                    style: TextStyle(fontSize: 18.0),),
              ],
            ),
          ),
        ));
  }
}
