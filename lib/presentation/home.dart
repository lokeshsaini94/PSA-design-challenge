import 'package:countup/countup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:psa_task/core/constant/util.dart';
import 'package:psa_task/core/theme/colors_psa.dart';
import 'package:psa_task/presentation/camera_screen/camera_screen.dart';
import 'package:psa_task/presentation/card_view/card_view.dart';
import 'package:psa_task/presentation/grading_confirmation/confirmation_page.dart';
import 'package:psa_task/presentation/search/search_screen.dart';
import 'package:psa_task/util/custom_page_route.dart';
import 'package:psa_task/util/scroll_to_hide_widget.dart';
import 'package:psa_task/util/show_up_widget.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'dart:io' show Platform;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late ScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int delayAmount = 100;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: ColorsPSA.surfacePrimary,
        body: NestedScrollView(
          controller: controller,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: ColorsPSA.primary,
                floating: true,
                pinned: true,
                expandedHeight: 110,
                leading: Image.asset(
                  'assets/images/profile_icon.png',
                  width: 32,
                  height: 32,
                ),
                title: Text(
                  'COLLECTION',
                  style: TextStyle(
                    fontFamily: 'Area Normal',
                    fontWeight: FontWeight.w800,
                    fontSize: 22, // Increased font size
                    color: Colors.white,
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          SlideTransitionFromRight(page: SearchScreen()),
                        );
                      },
                      child: Hero(
                        tag: 'searchTag',
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                ],
                // App bar tabs
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(64.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TabBar(
                      labelColor: ColorsPSA.primary,
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
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Column(
                children: [
                  // Add to collection button
                  ShowUp(
                    delay: delayAmount,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 16,
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorsPSA.white,
                          minimumSize: Size(double.infinity, 48),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(color: ColorsPSA.borderSecondary),
                          ),
                          elevation: 4,
                          shadowColor: Colors.black.withOpacity(0.2),
                        ),
                        child: Text(
                          'Add to Collection',
                          style: TextStyle(
                            color: ColorsPSA.textPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Cards list
                  Flexible(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 8,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        // Swipable card items with actions
                        return Slidable(
                          startActionPane: ActionPane(
                            motion: const ScrollMotion(),
                            children: [
                              SlidableAction(
                                onPressed: (context) {
                                  Navigator.of(context).push(
                                    SlideTransitionFromBottom(
                                      page: ConfirmationPage(),
                                    ),
                                  );
                                },
                                backgroundColor: ColorsPSA.surfaceInvert,
                                foregroundColor: Colors.white,
                                label: 'Submit for grading',
                              ),
                            ],
                          ),
                          endActionPane: ActionPane(
                            motion: const ScrollMotion(),
                            children: [
                              SlidableAction(
                                onPressed: (context) {
                                  Navigator.of(context).push(
                                    SlideTransitionFromBottom(
                                      page: ConfirmationPage(),
                                    ),
                                  );
                                },
                                backgroundColor: ColorsPSA.surfaceInvert,
                                foregroundColor: Colors.white,
                                label: 'Submit for grading',
                              ),
                            ],
                          ),
                          // Card item
                          child: GestureDetector(
                            onTap: () {
                              cardsAction(index, context);
                            },
                            child: ShowUp(
                              delay: delayAmount + (index * 50),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 16,
                                ),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
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
                                                color:
                                                    pokemonCardsValueChangeColors[index],
                                                size: 16,
                                              ),
                                              Countup(
                                                begin: 0,
                                                end:
                                                    pokemonCardsValueChange[index],
                                                duration: Duration(seconds: 1),
                                                separator: '.',
                                                suffix: "%",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
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
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Center(child: Text('Vault Page')),
              Center(child: Text('Selling Page')),
              Center(child: Text('Sold Page')),
            ],
          ),
        ),
        bottomNavigationBar: SafeArea(
          child: ScrollToHideWidget(
            controller: controller,
            child: Container(
              height: 72,
              padding: EdgeInsets.only(top: 8, bottom: 8),
              decoration: BoxDecoration(
                color: ColorsPSA.surfacePrimary,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, -6), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(
                        context,
                      ).push(CustomAnimatedRoute(enterWidget: CameraScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                      padding: EdgeInsets.all(12),
                      child: SvgPicture.asset(
                        'assets/icons/scan-camera.svg',
                        width: 24,
                        height: 24,
                      ),
                    ),
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
        ),
      ),
    );
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

        var tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: curve));

        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
  }
}
