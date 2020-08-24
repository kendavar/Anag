import 'package:anag/screens/home/Feed/adviceCard.dart';
import 'package:anag/screens/wrapper.dart';
import 'package:anag/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:anag/screens/home/home.dart';
import 'package:anag/screens/home/Feed/inputadvice.dart';
import 'package:provider/provider.dart';
import 'package:anag/models/user.dart';

void main() => runApp(Anag());


class Anag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}


//void main() => runApp(MaterialApp(
//  home: Wrapper(),
//  // routes: {
//  //   '/':(context) => HomePage(),
//  //   '/inputadvice': (context) => InputAdvice(),
//  //   '/detailsAdvice': (context) => DetailsAdvice()
//  // },
//));

