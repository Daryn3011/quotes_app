import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({super.key});

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  List quotes = [
    "1",
    "2",
    "3",
    "4",
    "5 Dart VM Service on sdk gphone x86 is available at: http127.0.0.1:55836oM91_JW3Ql8The Flutter DevTools debugger and profiler on sdk gphone x86 is available athttp127.0.0.1:9101urihttp127.0.0.1:55836oM91_JW3Ql8"
  ];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(14.5)),
                    child: Center(
                      child: Text(
                        quotes[counter % quotes.length],
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontStyle: FontStyle.italic,
                            fontSize: 16.5),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 2.3,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                      //backgroundColor: Colors.greenAccent.shade700,
                      ),
                  onPressed: _showQuote,
                  icon: Icon(
                    Icons.wb_sunny_outlined,
                    color: Colors.red,
                  ),
                  label: Text(
                    "Inspire me",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      counter++;
    });
  }
}
