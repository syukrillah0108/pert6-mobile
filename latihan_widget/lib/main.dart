import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless vs Stateful',
      home: Scaffold(
        appBar: AppBar(title: const Text('Stateless - Stateful')),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            ContohStateless(),
            Divider(height: 40),
            ContohStateful(),
          ],
        ),
      ),
    );
  }
}

class ContohStateless extends StatelessWidget {
  const ContohStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Stateless',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        // 1. Text
        const Text('Halo, UTB'),
        const SizedBox(height: 12),

        // 2. Image (gambar dari folder assets/images)
        Image.asset('assets/images/flutter_logo.png', width: 64, height: 64),
        const SizedBox(height: 12),

        // 3. Icon
        const Row(
          children: [
            Icon(Icons.favorite, color: Colors.red, size: 32),
            SizedBox(width: 8),
            Icon(Icons.star, color: Colors.amber, size: 32),
            SizedBox(width: 8),
            Icon(Icons.home, color: Colors.blue, size: 32),
          ],
        ),
      ],
    );
  }
}

class ContohStateful extends StatefulWidget {
  const ContohStateful({super.key});

  @override
  State<ContohStateful> createState() => _ContohStatefulState();
}

class _ContohStatefulState extends State<ContohStateful> {
  // State (data yang bisa berubah)
  bool setuju = false;
  String nama = '';
  bool lampuNyala = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Stateful',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        Row(
          children: [
            Checkbox(
              value: setuju,
              onChanged: (value) {
                setState(() {
                  setuju = value ?? false;
                });
              },
            ),
            Text('Checkbox value: $setuju'),
          ],
        ),
        const SizedBox(height: 12),

        TextField(
          decoration: const InputDecoration(
            labelText: 'Nama',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            setState(() {
              nama = value;
            });
          },
        ),
        const SizedBox(height: 8),
        Text('Halo, ${nama.isEmpty ? '...' : nama}'),
        const SizedBox(height: 16),
        Row(
          children: [
            Icon(
              lampuNyala ? Icons.lightbulb : Icons.lightbulb_outline,
              color: lampuNyala ? Colors.amber : Colors.grey,
              size: 48,
            ),
            const SizedBox(width: 12),
            MaterialButton(
              onPressed: () {
                setState(() {
                  lampuNyala = !lampuNyala;
                });
              },
              color: Colors.blue,
              child: Text(lampuNyala ? 'Matikan' : 'Nyalakan'),
            ),
          ],
        ),
      ],
    );
  }
}
