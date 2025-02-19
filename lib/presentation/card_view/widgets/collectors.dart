import 'package:flutter/material.dart';

Column collectors() {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 8),
        decoration: BoxDecoration(color: Colors.white),
        alignment: Alignment.centerLeft,
        child: Text(
          'Collectors',
          style: TextStyle(
            color: Color(0xFF48494A),
            fontSize: 17,
            fontFamily: 'Area Normal',
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      SizedBox(
        height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.transparent,
              padding: const EdgeInsets.only(right: 16, left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      imagePaths[index],
                      width: 72,
                      height: 72,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    names[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF48494A),
                      fontSize: 15,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.60,
                      letterSpacing: 0.15,
                    ),
                  ),
                  Text(
                    status[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF6C6E6F),
                      fontSize: 13,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.bold,
                      height: 1.54,
                      letterSpacing: 0.13,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      Container(
        padding: const EdgeInsets.only(
          top: 12,
          bottom: 12,
          left: 16,
          right: 16,
        ),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Show 200 more collectors',
                    style: TextStyle(
                      color: Color(0xFF48494A),
                      fontSize: 15,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.60,
                      letterSpacing: 0.15,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Image.asset('assets/icons/chevron.png', width: 32, height: 32),
          ],
        ),
      ),
    ],
  );
}

List<String> imagePaths = [
  'assets/images/profile1.png',
  'assets/images/profile2.png',
  'assets/images/profile3.png',
  'assets/images/profile4.png',
  'assets/images/profile5.png',
  'assets/images/profile6.png',
  'assets/images/profile7.png',
  'assets/images/profile8.png',
];

List<String> names = [
  'Steph',
  'Kristina',
  'Harry',
  'Lionel',
  'Annina',
  'Tarra',
  'Molly',
  'Kathy',
];

List<String> status = [
  'PSA 9',
  'Raw',
  'PSA 4',
  'Raw',
  'Raw',
  'Raw',
  'Raw',
  'Raw',
];
