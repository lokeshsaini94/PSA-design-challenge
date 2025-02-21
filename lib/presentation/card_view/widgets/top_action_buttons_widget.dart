import 'package:flutter/material.dart';

class TopActionButtonsWidget extends StatelessWidget {
  const TopActionButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xCCF1F1F1),
            ),
            child: IconButton(
              icon: Icon(Icons.ios_share, color: Color(0xFF6C6E6F)),
              onPressed: () {},
              iconSize: 20,
              constraints: BoxConstraints(),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xCCF1F1F1),
            ),
            child: IconButton(
              icon: Icon(Icons.close_rounded, color: Color(0xFF6C6E6F)),
              onPressed: () {
                Navigator.pop(context);
              },
              iconSize: 20,
              constraints: BoxConstraints(),
            ),
          ),
        ],
      ),
    );
  }
}
