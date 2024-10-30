import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gesture and Navigation"),
      ),
      body: Center( // Center widget to center the entire column
        child: Column(
          mainAxisSize: MainAxisSize.min, // Centers vertically as well
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("This is supposed to be a Home Screen"),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, 'aboutme'), 
              child: const Text("Go to About Me"),
            ),
          ],
        ),
      ),
    );
  }
}
