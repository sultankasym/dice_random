import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Random random = Random();
  var firstDice1 = 1;
  int secondDice2 = 2;

  void activing() {
    setState(() {
      firstDice1 = random.nextInt(6) + 1;
      secondDice2 = random.nextInt(6) + 1;
    });
  }
  // int firstdice =

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(child: Text('Тапшырма 5')),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff4BFFFB), Color(0xff0767FF)])),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff7D19FF),
          Color(0xff00CDCD),
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (firstDice1 == 6 && secondDice2 == 6) const Text('win'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/icon$firstDice1.png',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/images/icon$secondDice2.png',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: () {
                activing();
              },
              icon: const Icon(
                Icons.tab,
                size: 30,
              ),
              label: const Text('Play'),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  const Size(100, 110),
                ),
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 219, 88, 88)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
