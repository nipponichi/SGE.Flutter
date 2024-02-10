
import 'package:flutter/material.dart';
import 'package:test_flutter3/PlayEffect.dart';

/**
 * Xylophone instrument class
 */
class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  /**
   *  Button type and basic style
   */
  Expanded buildKey(Color colors, int numSound) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: colors,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        ),
        onPressed: () {
          PlayEffect playEffect = PlayEffect();
          playEffect.play(numSound);
        }, child: Text(''),
      ),
    );
  }

  /**
   * Class structure
   */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          title: Text('Xylophone',
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: 'LatinaB',
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(Colors.red, 1),
                buildKey(Colors.orange, 2),
                buildKey(Colors.yellow, 3),
                buildKey(Colors.green, 4),
                buildKey(Colors.teal, 5),
                buildKey(Colors.blue, 6),
                buildKey(Colors.purple, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}