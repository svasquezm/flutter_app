import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/views/list/ModulesList.dart';

class ModulesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 29, 185, 71),
        title: Text("Frogmi")
      ),
      body: ModulesList(),
    );
  }
}