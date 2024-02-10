import 'package:audioplayers/audioplayers.dart';

class PlayEffect {
  final player = AudioPlayer();
  /**
   * play the sound track from source with the selected number
   */
  void play(int soundNum) {
    player.play(AssetSource('sound/note$soundNum.wav'));
  }
}
