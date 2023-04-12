import 'package:flutter/material.dart';
import 'package:flutter_lesson2/secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove debug from the screen
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Caн 0 ->(index)
  int index = 0;
  @override
  Widget build(BuildContext context) {
    //Scaffold бош экран
    return Scaffold(
      backgroundColor: Colors.white,
      // Экрандын жогору жагы(Темасы)
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          // Output to the screen
          "Тапшырма 1",
          // give color to the above text
          style: TextStyle(color: Colors.black),
        ),
        // exception shadow
        elevation: 0,
      ),
      body: Padding(
        // экрандын кырларына аралык беруу(horizontal)
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //infinity экрандын туурасынын узундугу канча болсо ошончо аралыкка чейин
                width: double.infinity,
                // бийиктиги
                height: 30,
                // Кыймыл-аракет
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(8)),
                child: Center(
                    child: Text(
                  "Сан: $index",
                  style: const TextStyle(fontSize: 20),
                )),
              ),
              // container менен row дун ортосундагы аралык
              const SizedBox(
                height: 20,
              ),
              // row катар менен жайгаштыруу
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // кнопка жаратуу
                  ElevatedButton(
                    // кнопкага кыймыл-аракет беруу
                    onPressed: () {
                      // абалын озгортуу
                      setState(() {
                        // Минус кнопкасын басканда index 1 ге азаят
                        index--;
                      });
                    },
                    // Экранга минус кнопкасын чыгаруу
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  // кнопка жаратуу
                  ElevatedButton(
                    // кнопкага кыймыл-аракет беруу
                    onPressed: () {
                      // абалын озгортуу
                      setState(() {
                        // Плюс кнопкасын басканда index 1 ге кобойот
                        index++;
                      });
                    },
                    // Экранга плюс белгисин чыгарат
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                ],
              ),
              // + жана - кнопкалары менен кийинки бетке отуучу кнопканын ортосундагы аралык
              const SizedBox(
                height: 15,
              ),
              // Экинчи бетке отууго кнопка
              IconButton(
                  onPressed: () {
                    // Башка бетке багыт беруу
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondPage(
                                  // Экинчи бетке index озгормосун жонотуу
                                  number: index,
                                )));
                  },
                  // Кнопканын формасын беруу
                  icon: const Icon(
                    Icons.skip_next_rounded,
                    size: 50,
                    color: Colors.blue,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
