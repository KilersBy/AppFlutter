import 'package:app1/model/Equipement.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'ui/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Le Bureau Réel',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Test(
        equipementList: [
          Equipement(),
        ].obs,
      ),
    );
  }
}
