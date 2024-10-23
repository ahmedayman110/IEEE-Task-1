import 'package:flutter/material.dart';
import 'third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffafafa),
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
          Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Container(
              margin: const EdgeInsets.only(top: 100),
              width: 500,
              height: 350,
              decoration: const BoxDecoration(
                color: Color(0xFFFAEFC9),
                borderRadius: BorderRadius.only(
                  topRight: Radius.elliptical(900, 600),
                  topLeft: Radius.zero,
                  bottomRight: Radius.elliptical(900, 600),
                  bottomLeft: Radius.zero,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 250), // Adjusted height for layout
              const Padding(
                padding: EdgeInsets.only(
                  top: 280,
                ),
                child: Text(
                  "Get started with Yoga",
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
                  "Easily get started with your yoga \njourney",
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
                          Icons.circle_outlined,
                          color: Color(0xFF9A3C81),
                          size: 15,
                        ),
                        SizedBox(width: 5),
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
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (second) => const ThirdScreen()),
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
    );
  }
}
