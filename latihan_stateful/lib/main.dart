import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 1;

  void tekantombol() {
    setState(() {
      number++;
      print(number);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Latihan Stateful",
      home: Scaffold(
        appBar: AppBar(title: const Text("Latihan Stateful")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(number.toString()),
              MaterialButton(
                onPressed: tekantombol,
                color: Colors.blue,
                height: 50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text("Tambah"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
