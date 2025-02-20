import 'package:flutter/material.dart';
import 'package:use_scramble/use_scramble.dart';

Container priceEstimate() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 19),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'UNGRADED',
                    style: TextStyle(
                      color: Color(0xFF6C6E6F),
                      fontSize: 11,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.45,
                      letterSpacing: 0.22,
                    ),
                  ),
                  const SizedBox(height: 6),
                  TextScramble(
                    text: '\$3,565.90',
                    speed: Duration(milliseconds: 40),
                    chars: '0123456789',
                    correctCharProbability:
                        0.1, // Correct character probability in [0, 1]
                    scrambleCycles: 2, // Number of times to scramble the text
                    style: TextStyle(
                      color: Color(0xFF48494A),
                      fontSize: 17,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.41,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Current value',
                    style: TextStyle(
                      color: Color(0xFF6C6E6F),
                      fontSize: 11,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.45,
                      letterSpacing: 0.22,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Container(
              width: 1,
              height: 64,
              color: Colors.grey.withOpacity(0.2),
            ),
            const SizedBox(width: 16),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 19),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PSA 10',
                    style: TextStyle(
                      color: Color(0xFF6C6E6F),
                      fontSize: 11,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.45,
                      letterSpacing: 0.22,
                    ),
                  ),
                  const SizedBox(height: 6),
                  TextScramble(
                    text: '\$319,999',
                    speed: Duration(milliseconds: 100),
                    chars: '0123456789',
                    correctCharProbability:
                        0.1, // Correct character probability in [0, 1]
                    scrambleCycles: 2, // Number of times to scramble the text
                    style: TextStyle(
                      color: Color(0xFF48494A),
                      fontSize: 17,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.41,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Pop 124',
                    style: TextStyle(
                      color: Color(0xFF6C6E6F),
                      fontSize: 11,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.45,
                      letterSpacing: 0.22,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Container(
              width: 1,
              height: 64,
              color: Colors.grey.withOpacity(0.2),
            ),
            const SizedBox(width: 16),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 19),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PSA 9',
                    style: TextStyle(
                      color: Color(0xFF6C6E6F),
                      fontSize: 11,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.45,
                      letterSpacing: 0.22,
                    ),
                  ),
                  const SizedBox(height: 6),
                  TextScramble(
                    text: '\$17,500',
                    speed: Duration(milliseconds: 30),
                    chars: '0123456789',
                    correctCharProbability:
                        0.1, // Correct character probability in [0, 1]
                    scrambleCycles: 2, // Number of times to scramble the text
                    style: TextStyle(
                      color: Color(0xFF48494A),
                      fontSize: 17,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.41,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Pop 718',
                    style: TextStyle(
                      color: Color(0xFF6C6E6F),
                      fontSize: 11,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.45,
                      letterSpacing: 0.22,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Container(
              width: 1,
              height: 64,
              color: Colors.grey.withOpacity(0.2),
            ),
            const SizedBox(width: 16),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 19),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PSA 8',
                    style: TextStyle(
                      color: Color(0xFF6C6E6F),
                      fontSize: 11,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.45,
                      letterSpacing: 0.22,
                    ),
                  ),
                  const SizedBox(height: 6),
                  TextScramble(
                    text: '\$7,592.69',
                    speed: Duration(milliseconds: 30),
                    chars: '0123456789',
                    correctCharProbability:
                        0.1, // Correct character probability in [0, 1]
                    scrambleCycles: 2, // Number of times to scramble the text
                    style: TextStyle(
                      color: Color(0xFF48494A),
                      fontSize: 17,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.41,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Pop 648',
                    style: TextStyle(
                      color: Color(0xFF6C6E6F),
                      fontSize: 11,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.45,
                      letterSpacing: 0.22,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Container(
              width: 1,
              height: 64,
              color: Colors.grey.withOpacity(0.2),
            ),
            const SizedBox(width: 16),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 19),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PSA 7',
                    style: TextStyle(
                      color: Color(0xFF6C6E6F),
                      fontSize: 11,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.45,
                      letterSpacing: 0.22,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '\$6,500.00',
                    style: TextStyle(
                      color: Color(0xFF48494A),
                      fontSize: 17,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.41,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Pop 516',
                    style: TextStyle(
                      color: Color(0xFF6C6E6F),
                      fontSize: 11,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.45,
                      letterSpacing: 0.22,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Container(
              width: 1,
              height: 64,
              color: Colors.grey.withOpacity(0.2),
            ),
            const SizedBox(width: 16),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 19),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PSA 6',
                    style: TextStyle(
                      color: Color(0xFF6C6E6F),
                      fontSize: 11,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.45,
                      letterSpacing: 0.22,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '\$5,650.00',
                    style: TextStyle(
                      color: Color(0xFF48494A),
                      fontSize: 17,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.41,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Pop 705',
                    style: TextStyle(
                      color: Color(0xFF6C6E6F),
                      fontSize: 11,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.45,
                      letterSpacing: 0.22,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
