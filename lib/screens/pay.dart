import 'package:flutter/material.dart';

class Pay extends StatelessWidget {
  const Pay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kisii University',
      home: Scaffold(
        body: Container(
          height: 200,
          width: 600,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 49, 140, 243).withOpacity(0.2),
                const Color.fromARGB(255, 11, 9, 128).withOpacity(0.4)
              ],
            ),
          ),
          child: Text('Pay'),
        ),
      ),
    );
  }
}
