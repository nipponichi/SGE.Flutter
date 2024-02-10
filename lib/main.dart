import 'package:test_flutter3/PlayEffect.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter3/Bongo.dart';
import 'package:test_flutter3/Xylophone.dart';
import 'package:test_flutter3/Guitar.dart';

/**
 * Main class
 */
void main() {
  runApp(MyApp());
}

/**
 * Set tittle and menu style
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide "debug" banner
      debugShowCheckedModeBanner: false,
      home: MainMenu(),
    );
  }
}

/**
 * Set buttons function
 */
class MainMenu extends StatelessWidget {
  Expanded buildKey(BuildContext context, Widget route, String buttonName,
      Color buttonColors, String imageName) {
    return Expanded(
      child: SafeArea(
        child: Container(
          //Circle button external border style
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black,
              width: 5.0,
            ),
          ),
          // Button type, main color and function
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: buttonColors,
              shape: CircleBorder(),
            ),
            onPressed: () {
              // Go to selected context (called route)
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => route));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                CircleAvatar(
                  radius: 45.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/image/$imageName.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /**
   * View context, name and structure
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'LatinMusicianApp',
          style: TextStyle(
            fontSize: 50.0,
            fontFamily: 'LatinaB',
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            // Button top & bottom separation
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(context, Xylophone(), 'Xylophone', Colors.red, 'xylophone'),
                SizedBox(width: 10),
                buildKey(context, Bongo(), 'Bongo', Colors.blue, 'bongo'),
                SizedBox(width: 10),
                buildKey(context, Guitar(), 'Guitar', Colors.green, 'guitar'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
