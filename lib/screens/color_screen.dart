import 'package:flutter/material.dart';
import 'package:kaiwa/Components/item.dart';
import 'package:kaiwa/models/number.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({Key? key}) : super(key: key);
  final List<Item> colors = const [
    Item(
        sound: 'sound/color/red.mp3',
        image: 'assets/images/colors/red.png',
        jpName: 'Aka',
        enName: 'Red'),
    Item(
        sound: 'sound/color/orange.mp3',
        image: 'assets/images/colors/orange.png',
        jpName: 'Orenji',
        enName: 'Orange'),
    Item(
        sound: 'sound/color/yellow.mp3',
        image: 'assets/images/colors/yellow.png',
        jpName: 'kiiro',
        enName: 'Yellow'),
    Item(
        sound: 'sound/color/green.mp3',
        image: 'assets/images/colors/green.png',
        jpName: 'Midori',
        enName: 'Green'),
    Item(
        sound: 'sound/color/blue.mp3',
        image: 'assets/images/colors/blue.png',
        jpName: 'Ao',
        enName: 'Blue'),
    Item(
        sound: 'sound/color/white.mp3',
        image: 'assets/images/colors/white.png',
        jpName: 'Shiro',
        enName: 'White'),
    Item(
        sound: 'sound/color/black.mp3',
        image: 'assets/images/colors/black.png',
        jpName: 'Kuro',
        enName: 'Black'),
    Item(
        sound: 'sound/color/purple.mp3',
        image: 'assets/images/colors/purple.png',
        jpName: 'Murasaki',
        enName: 'Purple'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffCFBAF0),
        title: const Text('Colors'),
      ),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, color) {
            return ListItem(number: colors[color], color: Color(0xffF1C0E8));
          }),
    );
  }
}
