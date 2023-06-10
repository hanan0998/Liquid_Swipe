import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hanans UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SwipingScreen(),
    );
  }
}

class SwipingScreen extends StatefulWidget {
  const SwipingScreen({super.key});

  @override
  State<SwipingScreen> createState() => _SwipingScreenState();
}

class _SwipingScreenState extends State<SwipingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              Container(
                color: Colors.amber,
                // child: Center(
                // child: Text(""),
              ),
              // ),
              Container(
                color: Colors.blueGrey.shade200,
              ),
              Container(
                color: Colors.cyan,
              ),
              Container(
                color: Colors.deepPurpleAccent,
              ),
            ],
          )
        ],
      ),
    );
  }
}

// Note: inside the container we make the whole screen UI
