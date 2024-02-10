
import 'package:flutter/material.dart';
import 'package:test_flutter3/PlayEffect.dart';

/**
 * Bongo instrument class
 */
class Bongo extends StatelessWidget {
  const Bongo({Key? key}) : super(key: key);

  /**
   *  Button type and basic style
   */
  Expanded buildKey(Color colors, Color borderColor, int numSound) {
    return Expanded(
      child: Container(
        //Circle button external border style
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: borderColor,
            width: 5.0,
          ),
        ),
        // Button type, main color and function
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: colors,
            shape: CircleBorder(),
          ),
          onPressed: () {
            PlayEffect playEffect = PlayEffect();
            playEffect.play(numSound);
          },
          child: Text(''),
        ),
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Bongo',
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
            // Button top & bottom separation
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              // Set horizontal button
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(width: 10),
                  buildKey(Colors.red, Colors.blue, 14),
                  SizedBox(width: 10),
                  buildKey(Colors.orange, Colors.blue, 15),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
