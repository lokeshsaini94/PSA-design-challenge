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

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  bool isAnimate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
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
                      child: Column(
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
                          divider(),
                          SizedBox(height: 32),
                          SubmitButtonWidget(
                            onPressed: () {
                              setState(() {
                                isAnimate = true;
                              });
                            },
                          ),
                          SizedBox(height: 32),
                        ],
                      ),
                    ),
                  ],
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
