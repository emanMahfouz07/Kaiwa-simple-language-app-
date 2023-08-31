import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kaiwa/models/modelPhrase.dart';
import 'package:kaiwa/models/number.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.number, required this.color})
      : super(key: key);
  final Item number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 16),
      height: 90,
      color: color,
      child: Row(
        children: [
          Image.asset(number.image),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.jpName,
                style: TextStyle(fontSize: 24),
              ),
              Text(
                number.enName,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                final player = AudioPlayer();
                player.play(AssetSource(number.sound));
              } catch (ex) {
                print(ex);
              }
            },
            icon: Icon(
              Icons.play_arrow,
            ),
          ),
        ],
      ),
    );
  }
}

class PhraseItem extends StatelessWidget {
  const PhraseItem({Key? key, required this.color, required this.phrase})
      : super(key: key);
  final Color color;
  final Phrase phrase;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 100,
      color: color,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                phrase.jpName,
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Text(
                phrase.enName,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              final pPlayer = AudioPlayer();
              pPlayer.play(
                AssetSource(phrase.sound),
              );
            },
            icon: Icon(Icons.play_arrow),
          ),
        ],
      ),
    );
  }
}
