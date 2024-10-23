import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFAFAFA),
        appBar: AppBar(
          backgroundColor: const Color(
              0XFFFAFAFA), // Optional: Matches the screen background
          elevation: 0, // Removes the shadow for a flat look
          title: const Text(
            'Home Screen',
            style: TextStyle(
              color: Color(0xff9A3C81),
              fontSize: 30,
              fontFamily: 'Pacifico',
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.favorite_border_outlined,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                null;
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.near_me_outlined,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                null;
              },
            ),
          ],
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Color(0xFFFAEFC9),
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Color(0xFFFAEFC9),
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Color(0xFFFAEFC9),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFFAEFC9),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 330,
                height: 330,
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: 370,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  null;
                },
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all<Color>(const Color(0xFF9A3C81)),
                ),
                child: const Text(
                  "Open",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12, top: 20),
              child: Text(
                "Sarah Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 225, top: 10),
              child: Text(
                "View all 109 comments",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
