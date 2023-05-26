import 'package:flutter/material.dart';

import 'constants.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({required this.counter, super.key});
  int counter;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [backColor1, backColor2],
          )),
          width: double.infinity,
          child: Column(
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
                  'عدد التسبيحات',
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
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: const Text(
                  'العوده للرئيسيه',
                  style: TextStyle(color: Colors.white, fontSize: 22),
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
