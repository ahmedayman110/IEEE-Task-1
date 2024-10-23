import 'package:flutter/material.dart';
import 'fourth_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFAFAFA),
        body: Stack(
          children: [
            Positioned(
              top: 45,
              left: 5,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_outlined,
                  color: Color(0xff9A3C81),
                  size: 40,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 100),
              width: 500,
              height: 350,
              decoration: const BoxDecoration(
                color: Color(0xFFFAEFC9),
                borderRadius: BorderRadius.vertical(
                  top: Radius.elliptical(7000, 1700),
                  bottom: Radius.elliptical(7000, 1700),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 120), // Adjusted height for layout
                const Padding(
                  padding: EdgeInsets.only(
                    top: 380,
                  ),
                  child: Text(
                    "Unplug your life",
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
                    "Set up different measures to start \nwith your life",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                SizedBox(
                  width: 370,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (fourth) => const FourthScreen()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                          const Color(0xFF9A3C81)),
                    ),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
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
