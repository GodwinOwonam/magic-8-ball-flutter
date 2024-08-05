import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: const Center(
              child: Text(
                'Ask Me Anything',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            backgroundColor: const Color.fromRGBO(4, 44, 118, 1),
          ),
          body: const SafeArea(
            child: BallPage(),
          ),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
                onPressed: () {
                  setState(() {
                    ballNumber = Random().nextInt(4) + 1;
                  });

                  if (kDebugMode) {
                    print('generated number $ballNumber');
                  }
                },
                child: Image.asset('images/ball$ballNumber.png')),
          )
        ],
      ),
    );
  }
}
