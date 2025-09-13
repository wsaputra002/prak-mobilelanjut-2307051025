import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saatnya Menabung'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/logo.png',
          width: 150,
          height: 150,
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Ayo Mulai Menabung!'),
          ),
      ],
    ),
    ),
    );
  }
}