import 'package:flutter/material.dart';
import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFAFAFA), // Corrected color hex format
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: Container(
                margin: const EdgeInsets.only(top: 100),
                width: 500,
                height: 350,
                decoration: const BoxDecoration(
                  color: Color(0xFFFAEFC9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(900, 600),
                    topRight: Radius.zero,
                    bottomLeft: Radius.elliptical(900, 600),
                    bottomRight: Radius.zero,
                  ),
                ),
              ),
            ),
            // Using a Column to arrange widgets properly
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 250), // Adjusted height for layout
                const Padding(
                  padding: EdgeInsets.only(
                    top: 280,
                  ),
                  child: Text(
                    "Practice Mindfulness",
                    style: TextStyle(
                      color: Color(0xFF9A3C81),
                      fontSize: 30,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    "Get on the right track towards\nmindfulness",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 150),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Skip",
                        style: TextStyle(fontSize: 20),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Color(0xFF9A3C81),
                            size: 20,
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.circle_outlined,
                            color: Color(0xFF9A3C81),
                            size: 15,
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.circle_outlined,
                            color: Color(0xFF9A3C81),
                            size: 15,
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (second) => const SecondScreen()),
                          );
                        },
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
