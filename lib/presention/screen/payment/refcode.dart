import 'package:flutter/material.dart';
import '../../shared/local/constant.dart';
import '../../shared/style/color.dart';

class RefCodeScreen extends StatelessWidget {
  const RefCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RefCode')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You Sholud Go To Any Market To Pay',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 35),
            const Text(
              'Ref Code :',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            Card(
              elevation: 12,
              shape: Border.all(color: redColor, width: 1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  refCode,
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
