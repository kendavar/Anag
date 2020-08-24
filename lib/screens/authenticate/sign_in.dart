import 'package:anag/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:anag/shared/constants.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String email ='';
  String password = '';
  String error ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Sign in"),
        actions: [
          FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text("Sign up"),
              onPressed: (){
                 widget.toggleView();
              })
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child:Form(
          key: _formKey,
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            TextFormField(
              decoration: textInputDecoration.copyWith(hintText: 'Email'),
              validator: (val) => val.isEmpty ? 'Enter a Email': null,
              onChanged: (val){
               setState(() {
                 email = val;
               });
              },
            ),
            SizedBox(height: 20.0,),
            TextFormField(
               decoration: textInputDecoration.copyWith(hintText: 'Password'),
              validator: (val) => val.length < 6 ? 'Enter a password 6+ chars long': null,
              obscureText: true,
              onChanged: (val){
                setState(() {
                  password = val;
                });
              },
            ),
            SizedBox(height: 20.0,),
            RaisedButton(
                child: Text(
                  'Sign in'
                ),
                onPressed: () async {
              if (_formKey.currentState.validate()) {
                 dynamic result = await _auth.signInWithEmailPassword(email, password);
                 print(result);
                 if(result == null){
                   setState(() {
                     error='Could not sign in with those credentials';
                   });
                 }
              }
                }),
  SizedBox(height: 20.0,),
  Text(
  error,
  style: TextStyle(color:Colors.red, fontSize: 14.0),
  )
          ],
        )),
      ),
    );
  }
}
