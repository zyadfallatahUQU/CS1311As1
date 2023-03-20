import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textConroller = TextEditingController();

  String userInput = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("zyadfallatah App")),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                        child: Center(
                  child: Text(
                    userInput,
                    style: TextStyle(
                      color: Color.fromARGB(255, 50, 50, 50),
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ))),
                TextField(
                  controller: _textConroller,
                  decoration: InputDecoration(
                      hintText: 'Enter Your name',
                      border: OutlineInputBorder()),
                ),
                MaterialButton(
                    onPressed: () {
                      setState(() {
                        if (_textConroller.text != "")
                          userInput = "Hello " + _textConroller.text;
                        _textConroller.clear();
                      });
                    },
                    color: Colors.blue,
                    child: const Text(
                      'Add',
                      style: TextStyle(color: Colors.white),
                    ))
              ]),
        ));
  }
}
