import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(181, 181, 180, 1),
      appBar: AppBar(title: Text('nueva pagina')),
    );
  }
}

Widget cliente1() {
  return Container(
    child: Text('Cliente 1'),
  );
}
