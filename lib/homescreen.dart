import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:seb7a_app/resultscreen.dart';

import 'constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  addOne() {
    setState(() {
      counter++;
    });
  }

  reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [backColor1, backColor2],
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const Expanded(child: SizedBox()),
              Expanded(
                flex: 2,
                child: Image.asset(
                  'assets/images/quran.png',
                  width: 250,
                ),
              ),
              const Expanded(
                child: Text(
                  'سبحان الله',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  counter.toString(),
                  style: const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: IconButton(
                          iconSize: 40,
                          onPressed: () {
                            reset();
                          },
                          icon: Icon(Icons.refresh_outlined)),
                    ),
                    Expanded(
                      child: IconButton(
                          iconSize: 70,
                          onPressed: () {
                            addOne();
                          },
                          icon: Icon(
                            Icons.add,
                          )),
                    ),
                    Expanded(
                      child: IconButton(
                          iconSize: 40,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ResultScreen(counter: counter)));
                          },
                          icon: Icon(Icons.done)),
                    ),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
