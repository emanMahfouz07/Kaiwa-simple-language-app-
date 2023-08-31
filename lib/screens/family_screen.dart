import 'package:flutter/material.dart';
import 'package:kaiwa/Components/item.dart';
import 'package:kaiwa/models/number.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({Key? key}) : super(key: key);
  final List<Item> numbers = const [
    Item(
        image: 'assets/images/family/father.png',
        jpName: 'Otusan',
        enName: 'Father',
        sound: 'sound/family/father.mp3'),
    Item(
        image: 'assets/images/family/mothre.png',
        jpName: 'Okaasan',
        enName: 'Mother',
        sound: 'sound/family/mother.mp3'),
    Item(
        image: 'assets/images/family/daughter.png',
        jpName: 'Musume',
        enName: 'Daughter',
        sound: 'sound/family/daughter.mp3'),
    Item(
        image: 'assets/images/family/son.png',
        jpName: 'Musuko',
        enName: 'Son',
        sound: 'sound/family/son.mp3'),
    Item(
        image: 'assets/images/family/grandpa.png',
        jpName: 'Ojiisan',
        enName: 'GrandPa',
        sound: 'sound/family/grandfather.mp3'),
    Item(
        image: 'assets/images/family/icons8-crying-baby-100.png',
        jpName: 'Akachan',
        enName: 'Baby',
        sound: 'sound/family/baby.mp3'),
    Item(
        image: 'assets/images/family/icons8-family-64.png',
        jpName: 'Kazoku',
        enName: 'Family',
        sound: 'sound/family/family.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffCFBAF0),
        title: const Text(
          'Family',
        ),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, num) {
            return ListItem(
              number: numbers[num],
              color: Color(0xff98F5E1),
            );
          }),
    );
  }
}
