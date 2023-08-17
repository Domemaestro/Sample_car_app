import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
      home:MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        body: Align(
          alignment: Alignment.bottomCenter,
          child: FractionallySizedBox(
            heightFactor: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50,),
                Image.asset("images/car2.png",),
                const Text(
                  "Premium cars.\nEnjoy the luxury",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Colors.white54,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Premium and Prestige card hourly rental.\nExperience the thrill and lower price",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(100, 250, 212, 214),
                  ),
                ),
                const SizedBox(height: 100),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.fromLTRB(80, 5, 80, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const MainAct()));
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MainAct()));
                  },
                  child: const Text(
                    "Let's Go!",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
    );
  }
}

class MainAct extends StatelessWidget {
  const MainAct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Second Activity"),
      ),
    );
  }
}
