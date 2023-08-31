import 'package:flutter/material.dart';
import 'package:kaiwa/Components/item.dart';
import 'package:kaiwa/models/modelPhrase.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<Phrase> phrases = const [
    Phrase(
        jpName: 'Konnichiwa',
        enName: 'Good Morning',
        sound: 'sound/phrases/hello.mp3'),
    Phrase(
        jpName: 'Hajimemashite',
        enName: 'Nice to meet you',
        sound: 'sound/phrases/nicetomeetyou.mp3'),
    Phrase(
        jpName: 'Sorehanandesuka',
        enName: 'What is this?',
        sound: 'sound/phrases/whatisit.mp3'),
    Phrase(
        jpName: 'Gomennasai',
        enName: 'i\'m sorry',
        sound: 'sound/phrases/Gomen\'nasai.mp3'),
    Phrase(
        jpName: 'Sayōnara', enName: 'Goodbye', sound: 'sound/phrases/bye.mp3'),
    Phrase(
        jpName: 'Dou itashimashite.',
        enName: 'You are welcome',
        sound: 'sound/phrases/yourwelcome.mp3'),
    Phrase(
        jpName: 'Watashinonamaeha Harudesu',
        enName: 'My name is haru',
        sound: 'sound/phrases/myNameis.mp3'),
    Phrase(
        jpName: 'Nihon kara kita ndesu',
        enName: 'I\'m from japan',
        sound: 'sound/phrases/Nihon kara kita ndesu.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffCFBAF0),
        title: const Text(
          'Phrases',
        ),
      ),
      body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, num) {
            return PhraseItem(
              phrase: phrases[num],
              color: Color(0xffA3C4F3),
            );
          }),
    );
  }
}
