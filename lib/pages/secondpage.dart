import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("go first page")),
      ),
    );
  }
}
