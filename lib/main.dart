import 'package:flutter/material.dart';

void main() => runApp(HelloFlutterApp());

class HelloFlutterApp extends StatefulWidget {
  @override
  _HelloFlutterAppState createState() => _HelloFlutterAppState();
}
String englishGreeting = "Hello Flutter";
String spanishGreeting = "Halo Flutter";
String japanishGreeting = "Kon'nichiwa  Flutter";
String ThaiGreeting = "Sawaddee Flutter";
String ChinaGreeting = "Nǐ hǎo Flutter";
String KoreanGreeting = "annyeonghaseyo Flutter";
class _HelloFlutterAppState extends State<HelloFlutterApp> {
  String displayText = englishGreeting;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //Scaffold Widget
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hello Flutter"),
              leading: Icon(Icons.home),
              actions: <Widget>[
                IconButton(onPressed:()  {
                  setState(() {
                    displayText =  displayText == englishGreeting?
                    spanishGreeting:englishGreeting;
                  });
                },
                    icon: Icon(Icons.refresh)),
                IconButton(onPressed:()  {
                  setState(() {
                    displayText =  displayText == ThaiGreeting?
                    japanishGreeting:ThaiGreeting;
                  });
                },
                    icon: Icon(Icons.add_reaction_sharp )),
                IconButton(onPressed:()  {
                  setState(() {
                    displayText =  displayText == ChinaGreeting?
                    KoreanGreeting:ChinaGreeting;
                  });
                },
                    icon: Icon(Icons.castle_outlined  )),

              ],
            ),
            body: Center(
              child: Text(
                displayText,
                style: TextStyle(fontSize: 24),
              ),
            )
        )
    );
  }
}