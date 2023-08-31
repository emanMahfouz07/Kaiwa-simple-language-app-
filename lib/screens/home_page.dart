import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaiwa/Components/category_item.dart';
import 'package:kaiwa/screens/NumbersScreen.dart';
import 'package:kaiwa/screens/color_screen.dart';
import 'package:kaiwa/screens/family_screen.dart';
import 'package:kaiwa/screens/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCFBAF0),
      appBar: AppBar(
        //backgroundColor: Color(0xffCFBAF0),
        title: const Text(
          'Kaiwa',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Category('Numbers', Color(0xffB9FBC0), () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NubmersScreen();
            }));
          }),
          Category('Family', Color(0xff98F5E1), () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return FamilyMembers();
            }));
          }),
          Category('Colors', Color(0xffF1C0E8), () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ColorPage();
            }));
          }),
          Category('Phrases', Color(0xffA3C4F3), () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PhrasesPage();
            }));
          }),
        ],
      ),
    );
  }
}
