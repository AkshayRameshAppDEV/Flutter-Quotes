import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var quotes = [
    "Stay Hungry. Stay Foolish - Steve Jobs",
    "Good Artists Copy, Great Artists Steal. - Pablo Picasso",
    "Argue with idiots, and you become an idiot. - Paul Graham",
    "Be yourself; everyone else is already taken. - Oscar Wilde",
    "Simplicity is the ultimate sophistication. - Leonardo Da Vinci"
  ];
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String getQuote() {
    if (_counter < quotes.length) {
      return quotes[_counter];
    } else {
      _counter = 0;
    }
    return quotes[_counter];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Motivational Quotes"),
          backgroundColor: Colors.redAccent
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  alignment: Alignment.center,
                  width: 380,
                  height: 250,
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                  ),
                  child: Text(getQuote(),
                      style: const TextStyle(
                          fontStyle: FontStyle.italic, fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
              ),
              ElevatedButton.icon(
                style:  ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent)),
                onPressed: _incrementCounter,
                icon: const Icon(Icons.check, size: 18),
                label: const Text("Inspire Me"),
              )
            ],
          ),
        ));
  }
}
