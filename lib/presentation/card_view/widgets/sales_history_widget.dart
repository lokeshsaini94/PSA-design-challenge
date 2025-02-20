import 'package:flutter/material.dart';
import 'package:psa_task/core/theme/colors_psa.dart';

Container salesHistory() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 16, bottom: 8),
          decoration: BoxDecoration(color: Colors.white),
          alignment: Alignment.centerLeft,
          child: Text(
            'Sales History',
            style: TextStyle(
              color: ColorsPSA.textSecondary,
              fontSize: 17,
              fontFamily: 'Area Normal',
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 12, bottom: 12),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/sales_image1.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Auction',
                      style: TextStyle(
                        color: ColorsPSA.textSecondary,
                        fontSize: 15,
                        fontFamily: 'Area Normal',
                        fontWeight: FontWeight.w800,
                        height: 1.60,
                        letterSpacing: 0.15,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Feb 13, 2024',
                      style: TextStyle(
                        color: ColorsPSA.textTertiary,
                        fontSize: 13,
                        fontFamily: 'Area Normal',
                        fontWeight: FontWeight.w700,
                        height: 1.54,
                        letterSpacing: 0.13,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '\$44.00',
                    style: TextStyle(
                      color: ColorsPSA.textSecondary,
                      fontSize: 13,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.54,
                      letterSpacing: 0.13,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    'assets/icons/chevron.png',
                    width: 32,
                    height: 32,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 12, bottom: 12),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/sales_image2.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Buy it Now',
                      style: TextStyle(
                        color: ColorsPSA.textSecondary,
                        fontSize: 15,
                        fontFamily: 'Area Normal',
                        fontWeight: FontWeight.w800,
                        height: 1.60,
                        letterSpacing: 0.15,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Feb 13, 2024',
                      style: TextStyle(
                        color: ColorsPSA.textTertiary,
                        fontSize: 13,
                        fontFamily: 'Area Normal',
                        fontWeight: FontWeight.w700,
                        height: 1.54,
                        letterSpacing: 0.13,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '\$44.00',
                    style: TextStyle(
                      color: ColorsPSA.textSecondary,
                      fontSize: 13,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.54,
                      letterSpacing: 0.13,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    'assets/icons/chevron.png',
                    width: 32,
                    height: 32,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 12, bottom: 12),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/sales_image3.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Auction',
                      style: TextStyle(
                        color: ColorsPSA.textSecondary,
                        fontSize: 15,
                        fontFamily: 'Area Normal',
                        fontWeight: FontWeight.w800,
                        height: 1.60,
                        letterSpacing: 0.15,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Feb 13, 2024',
                      style: TextStyle(
                        color: ColorsPSA.textTertiary,
                        fontSize: 13,
                        fontFamily: 'Area Normal',
                        fontWeight: FontWeight.w700,
                        height: 1.54,
                        letterSpacing: 0.13,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '\$44.00',
                    style: TextStyle(
                      color: ColorsPSA.textSecondary,
                      fontSize: 13,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.54,
                      letterSpacing: 0.13,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    'assets/icons/chevron.png',
                    width: 32,
                    height: 32,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 12, bottom: 12),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/sales_image4.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Buy it Now',
                      style: TextStyle(
                        color: ColorsPSA.textSecondary,
                        fontSize: 15,
                        fontFamily: 'Area Normal',
                        fontWeight: FontWeight.w800,
                        height: 1.60,
                        letterSpacing: 0.15,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Feb 13, 2024',
                      style: TextStyle(
                        color: ColorsPSA.textTertiary,
                        fontSize: 13,
                        fontFamily: 'Area Normal',
                        fontWeight: FontWeight.w700,
                        height: 1.54,
                        letterSpacing: 0.13,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '\$44.00',
                    style: TextStyle(
                      color: ColorsPSA.textSecondary,
                      fontSize: 13,
                      fontFamily: 'Area Normal',
                      fontWeight: FontWeight.w800,
                      height: 1.54,
                      letterSpacing: 0.13,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    'assets/icons/chevron.png',
                    width: 32,
                    height: 32,
                  ),
                ],
              ),
            ],
          ),
        ),

        Container(
          padding: const EdgeInsets.only(top: 12, bottom: 12),
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
                      'Show 45 more sales',
                      style: TextStyle(
                        color: ColorsPSA.textSecondary,
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
    ),
  );
}
