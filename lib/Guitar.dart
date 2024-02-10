
import 'package:flutter/material.dart';

import 'PlayEffect.dart';

/**
 * Guitar instrument class
 */
class Guitar extends StatelessWidget {
  const Guitar({Key? key}) : super(key: key);

  /**
   *  Button type and basic style
   */
  Expanded buildKey(Color colors, int numSound) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: colors,
          // Make squared buttons
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
          title: Text('Guitar',
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
            // Set horizontal button
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(Colors.red, 8),
                buildKey(Colors.orange, 9),
                buildKey(Colors.yellow, 10),
                buildKey(Colors.green, 11),
                buildKey(Colors.teal, 12),
                buildKey(Colors.blue, 13),
              ],
            ),
          ),
        ),
      ),
    );
  }
}