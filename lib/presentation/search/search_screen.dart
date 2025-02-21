import 'package:countup/countup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psa_task/core/constant/util.dart';
import 'package:psa_task/core/theme/colors_psa.dart';
import 'package:psa_task/presentation/card_view/card_view.dart';
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
      body: ListView.builder(
        itemCount: 16,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              cardsAction(index, context);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
                            Countup(
                              begin: 0,
                              end: pokemonCardsValueChange[index],
                              duration: Duration(seconds: 1),
                              separator: '.',
                              suffix: "%",
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
    );
  }
}

// Cards swipe action to open card view or show Toast
void cardsAction(int index, BuildContext context) {
  if (index == 0) {
    Navigator.of(context).push(_createRoute());
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
}

// Custom page route for card view
Route _createRoute() {
  return PageRouteBuilder(
    opaque: false,
    transitionDuration: const Duration(milliseconds: 800),
    reverseTransitionDuration: const Duration(milliseconds: 500),
    pageBuilder: (context, animation, secondaryAnimation) => const CardView(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}
