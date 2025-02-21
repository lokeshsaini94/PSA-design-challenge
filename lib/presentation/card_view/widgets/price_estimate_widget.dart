import 'package:flutter/material.dart';

class PriceEstimateWidget extends StatelessWidget {
  const PriceEstimateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 16),
            _buildPriceColumn('UNGRADED', '\$3,565.90', 'Current value'),
            const SizedBox(width: 16),
            _buildDivider(),
            const SizedBox(width: 16),
            _buildPriceColumn('PSA 10', '\$319,999', 'Pop 124'),
            const SizedBox(width: 16),
            _buildDivider(),
            const SizedBox(width: 16),
            _buildPriceColumn('PSA 9', '\$17,500', 'Pop 718'),
            const SizedBox(width: 16),
            _buildDivider(),
            const SizedBox(width: 16),
            _buildPriceColumn('PSA 8', '\$7,592.69', 'Pop 648'),
            const SizedBox(width: 16),
            _buildDivider(),
            const SizedBox(width: 16),
            _buildPriceColumn('PSA 7', '\$6,500.00', 'Pop 516'),
            const SizedBox(width: 16),
            _buildDivider(),
            const SizedBox(width: 16),
            _buildPriceColumn('PSA 6', '\$5,650.00', 'Pop 705'),
            SizedBox(width: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceColumn(String title, String price, String subtitle) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 19),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF6C6E6F),
              fontSize: 11,
              fontFamily: 'Area Normal',
              fontWeight: FontWeight.w800,
              height: 1.45,
              letterSpacing: 0.22,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            price,
            style: TextStyle(
              color: Color(0xFF48494A),
              fontSize: 17,
              fontFamily: 'Area Normal',
              fontWeight: FontWeight.w800,
              height: 1.41,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            subtitle,
            style: TextStyle(
              color: Color(0xFF6C6E6F),
              fontSize: 11,
              fontFamily: 'Area Normal',
              fontWeight: FontWeight.w800,
              height: 1.45,
              letterSpacing: 0.22,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(width: 1, height: 64, color: Colors.grey.withOpacity(0.2));
  }
}
