import 'package:flutter/material.dart';
import 'package:kaiwa/screens/home_page.dart';

void main() {
  runApp(const Kaiwa());
}

class Kaiwa extends StatelessWidget {
  const Kaiwa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
