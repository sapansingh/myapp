import 'package:flutter/material.dart';

class Texterw extends StatefulWidget {
  @override
  State<Texterw> createState() => _TexterwState();
}

class _TexterwState extends State<Texterw> {
  TextEditingController text1 = TextEditingController();
  String varr = "";
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.all(10),
        child: TextField(
          controller: text1,
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
              label: Text("Type Here")),
        ),
      ),
      ElevatedButton(
          onPressed: () {
            varr = text1.text.toString();
            varr = varr + "ddd";
            setState(() {});
          },
          child: Text("getvalue")),
      SizedBox(
        height: 50,
      ),
      Text(varr)
    ]);
  }
}
