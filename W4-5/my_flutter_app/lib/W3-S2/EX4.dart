import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 100 white space at the top
            const SizedBox(height: 100),

            // Blue box: height 400
            Container(
              height: 400,
              color: const Color(0xFF4472C4),
            ),

            // Green (remaining width) + pink (100 wide), height 100
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: const Color(0xFF70AD47),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: const Color(0xFFE873BE),
                ),
              ],
            ),

            // Three yellow boxes, same width, 20 gap, height 100
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: const Color(0xFFFFC000),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 100,
                    color: const Color(0xFFFFC000),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 100,
                    color: const Color(0xFFFFC000),
                  ),
                ),
              ],
            ),

            // 20 white space
            const SizedBox(height: 20),

            // Pink box: remaining height
            Expanded(
              child: Container(
                color: const Color(0xFFE873BE),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}