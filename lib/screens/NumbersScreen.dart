import 'package:flutter/material.dart';
import 'package:kaiwa/Components/item.dart';
import 'package:kaiwa/models/number.dart';

class NubmersScreen extends StatelessWidget {
  const NubmersScreen({Key? key}) : super(key: key);
  final List<Item> numbers = const [
    Item(
        image: 'assets/images/Numbers/n-1-cute-96.png',
        jpName: 'Ichi',
        enName: 'One',
        sound: 'sound/Number/one(ichi).mp3'),
    Item(
        image: 'assets/images/Numbers/n-2-cute-96.png',
        jpName: 'Nii',
        enName: 'Two',
        sound: 'sound/Number/number_two_sound.mp3'),
    Item(
        image: 'assets/images/Numbers/n-3-cute-96.png',
        jpName: 'San',
        enName: 'Three',
        sound: 'sound/Number/number_three_sound.mp3'),
    Item(
        image: 'assets/images/Numbers/n-4-cute-96.png',
        jpName: 'Yon',
        enName: 'Four',
        sound: 'sound/Number/number_four_sound.mp3'),
    Item(
        image: 'assets/images/Numbers/icons8-5-cute-96.png',
        jpName: 'Go',
        enName: 'Five',
        sound: 'sound/Number/number_five_sound.mp3'),
    Item(
        image: 'assets/images/Numbers/n-6-cute-96.png',
        jpName: 'Roku',
        enName: 'Six',
        sound: 'sound/Number/number_six_sound.mp3'),
    Item(
        image: 'assets/images/Numbers/n-7-cute-96.png',
        jpName: 'nana',
        enName: 'Seven',
        sound: 'sound/Number/number_seven_sound.mp3'),
    Item(
        image: 'assets/images/Numbers/icons8-8-cute-96.png',
        jpName: 'Hachi',
        enName: 'Eight',
        sound: 'sound/Number/number_eight_sound.mp3'),
    Item(
        image: 'assets/images/Numbers/icons8-9-cute-96.png',
        jpName: 'Kyu',
        enName: 'Nine',
        sound: 'sound/Number/number_nine_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffCFBAF0),
        title: const Text(
          'Numbers',
        ),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, num) {
            return ListItem(
              number: numbers[num],
              color: Color(0xffB9FBC0),
            );
          }),
    );
  }

// just for knowledge
  List<Widget> getList(List<Item> numbers) {
    List<Widget> itemList = [];
    for (int i = 0; i < numbers.length; i++) {
      itemList.add(
        ListItem(
          number: numbers[i],
          color: Color(0xffB9FBC0),
        ),
      );
    }
    return itemList;
  }
}
