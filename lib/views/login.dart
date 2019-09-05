import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:http/http.dart' as http;
import 'modules.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: LoginViewHome()
    );
  }
}

class LoginViewHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginViewHomeState();
}

class LoginViewHomeState extends State<LoginViewHome> with TickerProviderStateMixin {

  String usernameValue = "";
  String passwordValue = "";

  _loginWithServer({String username, String password, Function onSuccess, Function onError}) async {
    var res = await http.get("http://api.frogmi.com/status");
    if(res != null) {
      onSuccess();
    } else {
      onError();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.mail)), onChanged: (str) {
                usernameValue = str;
              }),
              TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.lock)), onChanged: (str) {
                passwordValue = str;
              }),
              MaterialButton(child: Text("Login"), onPressed: () {
                _loginWithServer(username: usernameValue,
                                 password: passwordValue,
                                 onSuccess: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ModulesView()));
                                 },
                                 onError: () {
                                   Toast.show("Invalid credentials", context, duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
                                 });
              })
            ]
          ))
    );
  }
}