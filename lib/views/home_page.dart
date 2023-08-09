import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              flex: 8,
              child: Center(
                child: Text(
                  'Questions are shown here',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green, // Background Color
                ),
                // style: const ButtonStyle(textStyle: TextStyle(color: Colors.red)),
                // onPressed: () => print('Yes pressed'),
                // onLongPress: () => print('Yes long pressed'),
                onPressed: null,
                child: const Center(
                  child: Text(
                    'Yes',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red, // Background Color
                ),
                onPressed: null,
                child: const Center(
                  child: Text(
                    'No',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
