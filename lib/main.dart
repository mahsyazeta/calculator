import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState()=>_MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController masukanPertama = TextEditingController();
  TextEditingController masukanKedua = TextEditingController();
  int? hasil =0, input1 =0, input2=0;

  tambah(){
    setState(() {
      input1 = int.parse(masukanPertama.text);
      input2 = int.parse(masukanKedua.text);
      hasil = input1!+input2!;
    });
  }

  kurang(){
    setState(() {
      input1 = int.parse(masukanPertama.text);
      input2 = int.parse(masukanKedua.text);
      hasil = input1!-input2!;
    });
  }

  kali(){
    setState(() {
      input1 = int.parse(masukanPertama.text);
      input2 = int.parse(masukanKedua.text);
      hasil = input1!*input2!;
    });
  }

  bagi(){
    setState(() {
      input1 = int.parse(masukanPertama.text);
      input2 = int.parse(masukanKedua.text);
      hasil = input1!~/input2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(children: [
          //text
          Row(
            children: [
              Text('Hasil Perhitungan : $hasil'),
            ],
          ),
          // text form 1
          TextField(
            controller: masukanPertama,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "masukan nomor pertama" ),
          ),
          //text form 2
          TextField(
            controller: masukanKedua,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "masukan nomor kedua" ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){tambah();}, child: const Text('+')),
              ElevatedButton(onPressed: (){kurang();}, child: const Text('-'))
              
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){kali();}, child: const Text('*')),
              ElevatedButton(onPressed: (){bagi();}, child: const Text('/'))
              
            ],
          )
        ]),
      );
  }
  
}

