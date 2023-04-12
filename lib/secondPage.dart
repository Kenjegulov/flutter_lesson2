import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.number});
  // озргорууго болбой турган озгормо жарыялоо(number)
  final int number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Экранга "Тапшырма 2" жазууну жазып чыгаруу
        title: const Center(child: Text("Тапшырма 2")),
      ),
      // Коддун денесин ортосуна жайгаштыруу
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Card(
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Theme.of(context).colorScheme.outline,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            // Маалыматт чыгаруучу контейнердин узундугун бийиктигин беруу жана аны ортого жайгаштыруу
            child: SizedBox(
              width: 300,
              height: 50,
              child: Center(
                  child: Text(
                // Экранга биринчи беттен келген index озгормосун экранга басып чыгаруу(number)
                "Сан : ${number}",
                // Жогорудагы тексттин шрифттерин беруу
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ),
          )
        ]),
      ),
    );
  }
}
