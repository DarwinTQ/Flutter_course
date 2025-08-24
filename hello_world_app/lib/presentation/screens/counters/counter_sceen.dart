import 'package:flutter/material.dart';

class CounterSceen extends StatefulWidget {
  const CounterSceen({super.key});

  @override
  State<CounterSceen> createState() => _CounterSceenState();
}

class _CounterSceenState extends State<CounterSceen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),
            // cabiar de estado si el contador es o tiene que decir 0 clics pero sie es
            // 1 debe decir 1 clic si es mas de 1 debe decir n c clics
            Text(
              clickCounter == 1 ? '1 clic' : '$clickCounter clics',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
