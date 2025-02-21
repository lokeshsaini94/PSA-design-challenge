import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:psa_task/core/theme/colors_psa.dart';
import 'package:psa_task/presentation/card_view/widgets/auction_price_widget.dart';
import 'package:psa_task/presentation/card_view/widgets/card_image_widget.dart';
import 'package:psa_task/presentation/card_view/widgets/card_title_widget.dart';
import 'package:psa_task/presentation/card_view/widgets/collectors_widget.dart';
import 'package:psa_task/presentation/card_view/widgets/divider_widget.dart';
import 'package:psa_task/presentation/card_view/widgets/price_estimate_title_widget.dart';
import 'package:psa_task/presentation/card_view/widgets/price_estimate_widget.dart';
import 'package:psa_task/presentation/card_view/widgets/sales_history_widget.dart';
import 'package:psa_task/presentation/card_view/widgets/submit_button_widget.dart';
import 'package:psa_task/presentation/card_view/widgets/top_action_buttons_widget.dart';
import 'package:psa_task/util/scroll_to_hide_widget.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  late ScrollController controller;
  bool isAnimate = false;

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              controller: controller,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Center(
                      child: Container(
                        width: 40,
                        height: 4,
                        decoration: BoxDecoration(
                          color: ColorsPSA.textDisabled,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              topAactionButtons(context),
                              SizedBox(height: 16),
                              CardImageWidget(),
                              SizedBox(height: 8),
                              cardTitle(),
                              priceEstimateTitle(),
                              priceEstimate(),
                              SizedBox(height: 16),
                              divider(),
                              SizedBox(height: 16),
                              salesHistory(),
                              SizedBox(height: 16),
                              divider(),
                              SizedBox(height: 16),
                              AuctionPriceWidget(),
                              SizedBox(height: 16),
                              divider(),
                              collectors(),
                              SizedBox(height: 16),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ScrollToHideWidget(
                controller: controller,
                child: SubmitButtonWidget(
                  onPressed: () {
                    setState(() {
                      isAnimate = true;
                    });
                  },
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(seconds: 2),
              curve: Curves.easeInOut,
              left: isAnimate ? MediaQuery.of(context).size.width + 100 : -100,
              bottom: 0,
              child:
                  isAnimate
                      ? Lottie.asset(
                        height: 150,
                        'assets/animations/pikachu.json',
                        repeat: true,
                      )
                      : SizedBox.shrink(),
            ),
            isAnimate
                ? Align(
                  alignment: Alignment.center,
                  child: Lottie.asset(
                    'assets/animations/confetti.json',
                    repeat: true,
                  ),
                )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
