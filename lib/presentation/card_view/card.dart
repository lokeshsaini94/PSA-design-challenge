import 'package:flutter/material.dart';
import 'package:psa_task/presentation/card_view/widgets/auctionPrice.dart';
import 'package:psa_task/presentation/card_view/widgets/card_image.dart';
import 'package:psa_task/presentation/card_view/widgets/card_title.dart';
import 'package:psa_task/presentation/card_view/widgets/collectors.dart';
import 'package:psa_task/presentation/card_view/widgets/divider.dart';
import 'package:psa_task/presentation/card_view/widgets/price_estimate.dart';
import 'package:psa_task/presentation/card_view/widgets/price_estimate_title.dart';
import 'package:psa_task/presentation/card_view/widgets/sales_history.dart';
import 'package:psa_task/presentation/card_view/widgets/submit_button.dart';
import 'package:psa_task/presentation/card_view/widgets/top_action_buttons.dart';

Future<dynamic> cardViewSheet(BuildContext context, int index) {
  return showModalBottomSheet(
    backgroundColor: Colors.white,
    context: context,
    isScrollControlled: true,
    enableDrag: true,
    isDismissible: true,
    useSafeArea: true,
    builder: (context) {
      return DraggableScrollableSheet(
        expand: true,
        initialChildSize: 1.0,
        minChildSize: 1.0,
        maxChildSize: 1.0,
        snap: true,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
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
                        color: Color(0xFFBABABA),
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
                        cardImage(),
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
                        auctionPrice(),
                        SizedBox(height: 16),
                        divider(),
                        collectors(),
                        SizedBox(height: 16),
                        divider(),
                        SizedBox(height: 32),
                        submitButton(),
                        SizedBox(height: 32),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
