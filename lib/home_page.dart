import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double percent = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Percent"),
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircularPercentIndicator(
            radius: 60,
            percent: percent / 100,
            animation: true,
            lineWidth: 15,
            animateFromLastPercent: true,
            center: Text("${percent.toStringAsFixed(0)}%"),
            progressColor: Colors.pinkAccent,
          ),
          LinearPercentIndicator(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            lineHeight: 15,
            percent: percent / 100,
            center: Text(
              "${percent.toStringAsFixed(0)}%",
              style: const TextStyle(fontSize: 12),
            ),
            barRadius: const Radius.circular(5),
            progressColor: Colors.amber,
            animation: true,
            animateFromLastPercent: true,
          ),
          ElevatedButton(
            onPressed: () {
              if (percent >= 100) {
                setState(() {
                  percent = 10;
                });
              } else {
                setState(() {
                  percent += 10;
                });
              }
            },
            child: const Text("Increase 10%"),
          ),
        ],
      ),
    );
  }
}
