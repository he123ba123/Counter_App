//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(counter());
}

// ignore: camel_case_types, must_be_immutable
class counter extends StatefulWidget {
  counter({super.key});

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            " Points Counter",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      "$teamApoints",
                      style: const TextStyle(fontSize: 170),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        //maximumSize: const Size(400, 400),
                        //fixedSize: const Size(150, 45)
                        minimumSize: const Size(150, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          teamApoints++;
                        });
                      },
                      child: const Text(
                        "Add 1 point",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: const Size(150, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          teamApoints +=2;
                        });
                      },
                      child: const Text(
                        "Add 2 point",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: const Size(150, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          teamApoints += 3;
                        });
                      },
                      child: const Text(
                        "Add 3 point",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Color.fromARGB(255, 198, 197, 197),
                    thickness: 1,
                    indent: 40,
                    endIndent: 30,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      "$teamBpoints",
                      style: const TextStyle(fontSize: 170),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: const Size(150, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoints++;
                        });
                      },
                      child: const Text(
                        "Add 1 point",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: const Size(150, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoints += 2;
                        });
                      },
                      child: const Text(
                        "Add 2 point",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: const Size(150, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoints += 3;
                        });
                      },
                      child: const Text(
                        "Add 3 point",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 83, 123, 244),
                  maximumSize: const Size(150, 45),
                ),
                onPressed: () {
                  setState(() {
                    teamApoints = 0;
                    teamBpoints = 0;
                  });
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.refresh,
                      color: Colors.black,
                      size: 26,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Reset",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}