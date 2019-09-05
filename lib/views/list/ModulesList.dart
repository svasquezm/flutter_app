import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/ModuleModel.dart';

class ModulesList extends StatelessWidget {
  var modules = [
    ModuleModel(name: "Store Beat"),
    ModuleModel(name: "Store Action"),
    ModuleModel(name: "Task Management"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: modules.length + 1,
        itemBuilder: (context, index) => index == 0
            ? Container(height: 100,
                        color: Color.fromARGB(255, 29, 185, 71),
                        child: Center(child: Text("Frogmi Header")))
            : Container(height: 70,
                        child: ListTile(
                            leading: Icon(Icons.account_circle),
                            title: Text('${modules[index - 1].name}')
                        )));
  }
}