import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

// ignore: must_be_immutable
class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Points Counter"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        "$teamAPoints",
                        style: const TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoints = teamAPoints + 2;
                          });
                        },
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoints = teamAPoints + 3;
                          });
                        },
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 60,
                    endIndent: 20,
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        "$teamBPoints",
                        style: const TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamBPoints = teamBPoints + 2;
                          });
                        },
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                            setState(() {
                            teamBPoints = teamBPoints + 3;
                          });
                        },
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 50)),
              onPressed: () {
                setState(() {
                  teamAPoints = teamBPoints = 0;
                });
              },
              child: const Text(
                "Reset",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
