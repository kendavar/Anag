import 'package:anag/screens/authenticate/authenticate.dart';
import 'package:anag/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:anag/models/user.dart';
import 'home/home.dart';



class Wrapper extends StatelessWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if(user == null){
      return Authenticate();
    }else{
      return HomePage();
    }
  }
}