import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:psa_task/presentation/card_view/card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
    Color(0xFF039855),
    Color(0xFFDA2D20),
    Color(0xFFDA2D20),
    Color(0xFF039855),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 110,
          backgroundColor: Color(0xFFEB1C2D),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/profile_icon.png',
                    width: 32,
                    height: 32,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'COLLECTION',
                        style: TextStyle(
                          fontFamily: 'Area Normal',
                          fontWeight: FontWeight.w800,
                          fontSize: 22, // Increased font size
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.search, color: Colors.white, size: 32),
                ],
              ),
              SizedBox(height: 12),
              TabBar(
                labelColor: Color(0xFFEB1C2D),
                indicatorColor: Colors.transparent,
                labelPadding: EdgeInsets.zero,
                dividerColor: Colors.transparent,
                unselectedLabelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                tabs: [
                  Tab(
                    child: Text(
                      'Inventory',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Vault',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Selling',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Sold',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Container(
          color: Color(0xFFFAFAFA),
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFFFFFFF),
                              minimumSize: Size(double.infinity, 48),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(color: Color(0xFFEAEAEA)),
                              ),
                              elevation: 0,
                            ),
                            child: Text(
                              'Add to Collection',
                              style: TextStyle(
                                color: Color(0xFF212121),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          Expanded(
                            child: ListView.builder(
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    cardViewSheet(context, index);
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          pokemonCardsImages[index],
                                          width: 64,
                                          height: 88,
                                          fit: BoxFit.fitHeight,
                                        ),
                                        SizedBox(width: 16),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'UNGRADED',
                                                style: TextStyle(
                                                  color: Color(0xFF6C6E6F),
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(height: 4),
                                              Text(
                                                pokemonCards[index],
                                                style: TextStyle(
                                                  color: Color(0xFF212121),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                ),
                                              ),
                                              SizedBox(height: 4),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    pokemonCardsValue[index],
                                                    style: TextStyle(
                                                      color: Color(0xFF212121),
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  SizedBox(width: 6),
                                                  Icon(
                                                    pokemonCardsValueChangeIcons[index],
                                                    color:
                                                        pokemonCardsValueChangeColors[index],
                                                    size: 16,
                                                  ),
                                                  Text(
                                                    pokemonCardsValueChange[index],
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          pokemonCardsValueChangeColors[index],
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
                        ],
                      ),
                    ),
                    Center(child: Text('Vault Page')),
                    Center(child: Text('Selling Page')),
                    Center(child: Text('Sold Page')),
                  ],
                ),
              ),
              Container(
                //color: Color(0xFFFAFAFA),
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFFAFAFA),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, -3), // changes position of shadow
                    ),
                  ],
                ),
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/orders.svg',
                            width: 32,
                            height: 32,
                          ),
                          Text(
                            'Orders',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12, // Smaller font size
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                            padding: EdgeInsets.all(16),
                            child: SvgPicture.asset(
                              'assets/icons/scan-camera.svg',
                              width: 32,
                              height: 32,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/collections.svg',
                            width: 32,
                            height: 32,
                          ),
                          Text(
                            'Collection',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12, // Smaller font size
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
