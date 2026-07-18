import 'package:flutter/material.dart';
import 'package:wajed/core/utils/text_style.dart';

class FinancialRewardContainer extends StatelessWidget {
  const FinancialRewardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF6FEFC),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Financial reward (100 EGP)',
            style: Styles.fontSize14,
          ),
        ),
      ),
    );
  }
}
