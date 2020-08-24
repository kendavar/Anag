import 'package:flutter/material.dart';
import 'package:anag/screens/home/Feed/inputadvice.dart';
import 'package:anag/screens/home/Feed/detailsAdvice.dart';

class AdviceCard extends StatelessWidget {
  final Advice advice;

  const AdviceCard({Key key, this.advice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          Navigator.pushNamed(context, "/detailsAdvice");
        },
        leading: FlutterLogo(size: 72.0),
        title: Text('Three-line ListTile',style: TextStyle(fontSize: 20.0),),
        subtitle: Text('A sufficiently long subtitle warrants three lines.',style: TextStyle(fontSize: 18.0),),
        //trailing: Icon(Icons.more_vert),
        isThreeLine: true,
      ),
    );
  }
}
