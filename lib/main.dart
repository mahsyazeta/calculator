import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prestest',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(appBar: AppBar(title: Text('Kalkulator')),
        body: Column(children: [
          //text
          Container(
            child: Text('Hasil Perhitungan : '),
          ),
          // text form 1
          Container(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "masukkakn nomor pertama" ),
            ),
          )
        ]),
      ) 
      );
  }
}

