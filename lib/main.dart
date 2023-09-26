import 'package:flutter/material.dart';

import 'package:myapp/pages/options.dart';
import 'package:myapp/pages/secondpage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text("My First App"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(19)),
          ),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem<int>(value: 0, child: Text("home")),
                  PopupMenuItem<int>(value: 1, child: Text("about"))
                ];
              },
              onSelected: (value) {
                if (value == 0) {
                  print("you are selected home");
                } else if (value == 1) {
                  print("you are selected about");
                }
              },
            )
          ],
        ),
        body: Texterw(),
      ),
      routes: {'/secondpage': (context) => Secondpage()},
    );
  }
}
