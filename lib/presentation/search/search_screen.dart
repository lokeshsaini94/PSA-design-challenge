import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psa_task/core/constant/util.dart';
import 'package:psa_task/core/theme/colors_psa.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorsPSA.primary,
        foregroundColor: Colors.white,
        title: Row(
          children: [
            Hero(
              tag: 'searchTag',
              child: Icon(Icons.search, color: Colors.white, size: 32),
            ),
            SizedBox(width: 16),
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
            SizedBox(width: 16),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Done',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
                                pokemonCardsValueChangeStrings[index],
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
