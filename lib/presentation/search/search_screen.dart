import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psa_task/core/theme/colors_psa.dart';
import 'package:psa_task/presentation/card_view/card_view.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class SearchScreen extends StatelessWidget {
  static const List<String> pokemonCardsImages = [
    'assets/images/card1.png',
    'assets/images/card2.png',
    'assets/images/card3.png',
    'assets/images/card4.png',
  ];

  static const List<String> pokemonCards = [
    "1999 Pokemon Game 1st Edition Charizard - Holo #4",
    "1999 Pokemon Game 1st Edition  Mewtwo #10",
    "1999 Pokemon Game 1st Edition  Mewtwo #10",
    "1999 Pokemon Game 1st Edition  Blastoise #2",
  ];

  static List<String> pokemonCardsValue = [
    "\$3,565.17",
    "\$293.99",
    "\$63.31",
    "\$531.70",
  ];

  static const List<String> pokemonCardsValueChange = [
    "26.5%",
    "2.7%",
    "1.2%",
    "7.2%",
  ];

  static const List<IconData> pokemonCardsValueChangeIcons = [
    Icons.arrow_upward,
    Icons.arrow_downward,
    Icons.arrow_downward,
    Icons.arrow_upward,
  ];

  static const List<Color> pokemonCardsValueChangeColors = [
    ColorsPSA.textSuccess,
    ColorsPSA.textError,
    ColorsPSA.textError,
    ColorsPSA.textSuccess,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsPSA.primary,
        foregroundColor: Colors.white,
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                ),
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
              ),
            ),
            Icon(Icons.search, color: Colors.white, size: 32),
          ],
        ),
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                if (index == 0) {
                  //cardViewSheet(context, index);
                } else {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (BuildContext context) {
                      return CupertinoActionSheet(
                        title: Text(pokemonCards[index]),
                        cancelButton: CupertinoActionSheetAction(
                          child: Text('Dismiss'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      );
                    },
                  );
                }
              },
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Shimmer(
                      duration: Duration(seconds: 3),
                      interval: Duration(seconds: 0),
                      child: Image.asset(
                        pokemonCardsImages[index],
                        width: 64,
                        height: 88,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'UNGRADED',
                            style: TextStyle(
                              color: ColorsPSA.textTertiary,
                              fontWeight: FontWeight.w800,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            pokemonCards[index],
                            style: TextStyle(
                              color: ColorsPSA.textPrimary,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                pokemonCardsValue[index],
                                style: TextStyle(
                                  color: ColorsPSA.textPrimary,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 6),
                              Icon(
                                pokemonCardsValueChangeIcons[index],
                                color: pokemonCardsValueChangeColors[index],
                                size: 16,
                              ),
                              Text(
                                pokemonCardsValueChange[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: pokemonCardsValueChangeColors[index],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
